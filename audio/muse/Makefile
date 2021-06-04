# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT=	digital audio workstation with support for Audio and MIDI

GH_ACCOUNT=	muse-sequencer
GH_PROJECT=	muse
GH_TAGNAME=	4.0.0

CATEGORIES=	audio

HOMEPAGE=	https://muse-sequencer.github.io/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GLPv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml atk-1.0 atkmm-1.6 c cairo cairomm-1.0 curses
WANTLIB += fluidsynth gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkmm-2.4 harfbuzz jack lilv-0
WANTLIB += lo lrdf m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pangoxft-1.0 python3.8 readline rubberband samplerate
WANTLIB += serd-0 sigc-2.0 sndfile sord-0 sratom-0

MODULES=	devel/cmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS=	audio/ladspa \
		audio/lv2

LIB_DEPENDS=	audio/fluidsynth \
		audio/jack \
		audio/liblo \
		audio/libsamplerate \
		audio/libsndfile \
		audio/lilv \
		audio/rubberband \
		devel/atk2mm \
		textproc/liblrdf \
		devel/serd \
		x11/gtk+2 \
		x11/gtk2mm \
		x11/qt5/qtsvg

RUN_DEPENDS=	audio/ladspa \
		audio/lv2 \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/muse-4.0
	cp ${PREFIX}/share/man/man1/{grepmidi.1,muse4.1} ${PREFIX}/man/man1
	rm -rf ${PREFIX}/share/man

.include <bsd.port.mk>
