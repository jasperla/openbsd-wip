# $OpenBSD$

V =		0.3.5
COMMENT =	open source engine remake of Flashback
DISTNAME =	REminiscence-${V}
PKGNAME =	reminiscence-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games x11

HOMEPAGE =	http://cyxdown.free.fr/reminiscence/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m modplug ogg vorbisidec
WANTLIB += z

MASTER_SITES =	http://cyxdown.free.fr/reminiscence/

LIB_DEPENDS =	audio/libmodplug \
		audio/tremor \
		devel/sdl2

ALL_TARGET =	rs

NO_TEST =	Yes

pre-configure:
	sed -i 's,$${LOCALBASE},${LOCALBASE},g' ${WRKSRC}/main.cpp

# No upstream install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rs ${PREFIX}/bin/reminiscence
	${INSTALL_DATA_DIR} ${PREFIX}/share/reminiscence
	${INSTALL_DATA} ${WRKSRC}/{README.txt,rs.cfg} \
		${PREFIX}/share/reminiscence

.include <bsd.port.mk>
