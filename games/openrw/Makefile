# $OpenBSD: Makefile,v 1.8 2016/06/28 14:22:51 abieber Exp $

COMMENT=	open source Grand Theft Auto III game executable

DISTNAME=	openrw-2016.08.11

GH_ACCOUNT=	rwengine
GH_PROJECT=	openrw
GH_COMMIT=	160598b1bfdaee5b5d8f0e931f9d79acd46dc309

CATEGORIES=	games

HOMEPAGE=	https://github.com/rwengine/openrw

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

# openal is statically linked
#WANTLIB += GL SDL2 c curl m ogg openal pthread

MODULES=	gcc4 \
		devel/cmake \

MODGCC4_LANGS =         c c++
MODGCC4_ARCHS =         *

LIB_DEPENDS=	audio/libmad \
		audio/libsndfile \
		audio/openal \
		graphics/glm \
		devel/bullet \
		devel/sdl2 \

.include <bsd.port.mk>
