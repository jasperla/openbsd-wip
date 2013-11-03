/*
 * MOC - music on console
 * Copyright (c) 2013 Vadim Zhukov <persgray@gmail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */
 
#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include <sys/types.h>

#include <errno.h>
#include <sndio.h>
#include <string.h>

/* #include "server.h" */
#include "audio.h"
#include "log.h"
#include "options.h"
#include "common.h"

static struct sound_params moc_params;
static struct sio_par sndio_params;
static struct sio_hdl *sndio_dev = NULL;
static int sndio_volume = -1;

static void sndio_close ()
{
	if (sndio_dev != NULL) {
		sio_close (sndio_dev);
		sndio_dev = NULL;
		logit ("Audio device closed");
	}
	sndio_volume = -1;
}

static int sndio_open_dev ()
{
	const char *devname = SIO_DEVANY, *t;

	sndio_close();
	if ((t = options_get_str("SndioDevice")) != NULL)
		devname = t;
	if ((sndio_dev = sio_open(devname, SIO_PLAY, 0)) == NULL) {
		error ("Can't open %s, %s", devname, strerror(errno));
		return (0);
	}
	logit ("Audio device opened");
	return (1);
}

static void sndio_onvol_cb(void *arg, unsigned int newvol) {
	sndio_volume = newvol * 100 / SIO_MAXVOL;
}

static void sndio_onmove_cb(void *arg, int delta) {
	return (0);
}

/* Fill caps with the device capabilities. Return 0 on error. */
static int sndio_init (struct output_driver_caps *caps)
{
	struct sio_cap sndio_caps;
	int i;

	if (!sndio_open_dev()) {
		error ("Can't open the device.");
		return (0);
	}

	if (sio_getcap(sndio_dev, &sndio_caps) == 0) {
		error ("Can't get supported audio formats: %s",
				strerror(errno));
		sndio_close();
		return (0);
	}

	/* sndio takes care for us anyway */
	caps->formats = SFMT_S8|SFMT_U8|SFMT_S16|SFMT_U16|SFMT_S32|SFMT_U32|SFMT_LE|SFMT_BE;

	/*
	 * Theoretically, there could be non-supported configurations,
	 * but then we are doomed anyway.
	 */
	caps->min_channels = 255;
	caps->max_channels = 1;
	for (i = 0; i < SIO_NCHAN; i++) {
		if (caps->min_channels > (int)sndio_caps.pchan[i])
			caps->min_channels = sndio_caps.pchan[i];
		if (caps->max_channels < (int)sndio_caps.pchan[i])
			caps->max_channels = sndio_caps.pchan[i];
	}

	sio_onmove(sndio_dev, &sndio_onmove_cb, NULL);
	if (sio_onvol(sndio_dev, &sndio_onvol_cb, NULL) == 0) {
		error ("Cannot set up volume handler");
		sndio_close();
		return (0);
	}

	return (1);
}

static void sndio_update_volume () {
	int vol = sndio_volume;
	vol *= SIO_MAXVOL;
	vol /= 100;
	sio_setvol(sndio_dev, (unsigned) vol);
}

static int sndio_read_mixer ()
{
	return sndio_volume;
}

static void sndio_shutdown ()
{
	/* nothing to do */
}

static int sndio_set_params() {
	sio_initpar(&sndio_params);

	if ((moc_params.fmt & (SFMT_S8|SFMT_U8)) != 0)
		sndio_params.bits = 8;
	else if ((moc_params.fmt & (SFMT_S16|SFMT_U16)) != 0)
		sndio_params.bits = 16;
	else if ((moc_params.fmt & (SFMT_S32|SFMT_U32)) != 0)
		sndio_params.bits = 16;
	else {
		error ("Non-supported sample format (float?) requested, code %ld",
			SFMT_MASK_FORMAT & moc_params.fmt);
		return (0);
	}
	sndio_params.le = (moc_params.fmt & SFMT_LE) ? 1 : 0;
	sndio_params.msb = 1;
	sndio_params.pchan = (unsigned) moc_params.channels;
	sndio_params.rate = (unsigned) moc_params.rate;
	if (!sio_setpar(sndio_dev, &sndio_params)) {
		error("Cannot set up audio parameters");
		return (0);
	}
	if (!sio_getpar(sndio_dev, &sndio_params)) {
		error("Cannot get actual audio parameters");
		return (0);
	}
	sndio_update_volume();

	logit ("Audio parameters set to: %u bits/sample (%u bytes, %s), %u channels, %uHz",
			sndio_params.bits,
			sndio_params.bps,
			(sndio_params.le ? "LE" : "BE"),
			sndio_params.pchan,
			sndio_params.rate);

	return (1);
}

/* Return 0 on fail */
static int sndio_open (struct sound_params *new_params)
{
	if (!sndio_open_dev())
		return (0);
	if (new_params != NULL)
		memcpy(&moc_params, new_params, sizeof(struct sound_params));
	if (!sndio_set_params()) {
		sndio_close();
		return (0);
	}
	if (!sio_start(sndio_dev)) {
		error("Cannot start playing");
		sndio_close();
		return (0);
	}

	return (1);
}

static int sndio_play (const char *buff, const size_t size)
{
	size_t nwritten = 0, rv;
	logit("requested play of %zu bytes", size);

	do {
		rv = sio_write(sndio_dev, buff + nwritten, size - nwritten);
		if (!rv && sio_eof(sndio_dev)) {
			/* error occured */
			error("Error while playing, %lld bytes requested, %lld bytes remained",
				(long long)size, (long long)size - nwritten);
			sndio_close();
			return (-errno);
		}
		logit("written %zu bytes to device", rv);
		nwritten += rv;
	} while (nwritten < size);
	return ((int)nwritten);    /* XXX */
}

static void sndio_set_mixer (int vol)
{
	sndio_volume = vol;
	if (sndio_dev != NULL)
		sndio_update_volume();
}

static int sndio_get_buff_fill ()
{
	return (0);
}

static int sndio_reset ()
{
	/* do not use sio_stop(), it doesn't discard buffered data */
	if (!sndio_open(NULL))
		return (0);
	return (1);
}

static void sndio_toggle_mixer_channel ()
{
	/* XXX unimplemented */
}

static char *sndio_get_mixer_channel_name ()
{
	return xstrdup("default");    /* XXX */
}

static int sndio_get_rate ()
{
	return ((int)sndio_params.rate);
}

void sndio_funcs (struct hw_funcs *funcs)
{
	funcs->init = sndio_init;
	funcs->shutdown = sndio_shutdown;
	funcs->open = sndio_open;
	funcs->close = sndio_close;
	funcs->play = sndio_play;
	funcs->read_mixer = sndio_read_mixer;
	funcs->set_mixer = sndio_set_mixer;
	funcs->get_buff_fill = sndio_get_buff_fill;
	funcs->reset = sndio_reset;
	funcs->get_rate = sndio_get_rate;
	funcs->toggle_mixer_channel = sndio_toggle_mixer_channel;
	funcs->get_mixer_channel_name = sndio_get_mixer_channel_name;
}
