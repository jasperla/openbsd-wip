# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	soundcard digital software for amateur radio.

GH_ACCOUNT =	wb2osz
GH_PROJECT =	direwolf
GH_TAGNAME =	1.5

CATEGORIES =	comms

MAINTAINER =	John Nanney <john.nanney@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ossaudio pthread

FAKE_FLAGS =	DESTDIR=${WRKINST}${PREFIX}

BULID_DEPENDS =	comms/hamlib \
		misc/gpsd

RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes

post-configure:
	find ${WRKSRC} -name '*.sh' -print0 | xargs -0r \
		perl -pi -e 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,g'

.include <bsd.port.mk>
