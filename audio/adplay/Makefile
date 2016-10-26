# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	console-based OPL2 audio player

DISTNAME =	adplay-1.7

CATEGORIES =	audio

HOMEPAGE =	http://adplug.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL adplug binio c iconv m pthread sndio stdc++ usbhid

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=adplug/}

LIB_DEPENDS =	audio/adplug \
		devel/libbinio \
		devel/sdl

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-output-ao \
		 --disable-output-esound \
		 --disable-output-oss \
		 --disable-output-alsa

post-patch:
	rm ${WRKSRC}/src/getopt.h

.include <bsd.port.mk>
