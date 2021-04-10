# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT= 	Multichannel, multilayered, cross-platform drum plugin

V= 		0.9.19
DISTNAME=	drumgizmo-${V}

CATEGORIES=	audio

HOMEPAGE=	https://www.drumgizmo.org

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

#GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC X11 Xext c db glib-2.0 iconv
WANTLIB += intl jack m ogg pcre smf sndfile vorbis vorbisenc xcb

COMPILER=	base-clang ports-gcc

MASTER_SITES=	${HOMEPAGE}/releases/${DISTNAME}/

BUILD_DEPENDS=	audio/lv2 \
		devel/gettext,-tools
LIB_DEPENDS=	audio/jack \
		audio/libsndfile \
		audio/libsmf

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15

CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--disable-output-alsa --enable-lv2
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" 

NO_TEST=	Yes

.include <bsd.port.mk>
