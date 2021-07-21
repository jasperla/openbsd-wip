# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	plugin bundle of artistic real-time audio effects

V=		1.3.1
PKGNAME=	artyfx-${V}
GH_ACCOUNT=	openAVproductions
GH_PROJECT=	openAV-ArtyFX
GH_TAGNAME=	release-${V}

CATEGORIES=	audio

HOMEPAGE=	http://openavproductions.com/artyfx/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c cairo m sndfile

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	audio/lv2
LIB_DEPENDS=	audio/libsndfile \
			graphics/cairo

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
