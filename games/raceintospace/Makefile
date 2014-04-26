# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		computer version of the Liftoff! board game

DISTNAME =		raceintospace-1.1

CATEGORIES =		games

HOMEPAGE =		http://www.raceintospace.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL c m ogg pthread theora vorbis

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=raceintospace/}

LIB_DEPENDS =		audio/libogg \
			audio/libvorbis \
			devel/sdl \
			multimedia/libtheora

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
