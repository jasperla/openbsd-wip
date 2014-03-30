# $OpenBSD$

COMMENT =	dungeon simulator built on top of roguelike mechanics
DISTNAME =	keeperrl-0.0.20140320
CATEGORIES =	games x11

HOMEPAGE =	http://keeperrl.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
# Lato-bol.ttf & Symbola.ttf - SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 boost_serialization c m pthread sfml-graphics
WANTLIB += sfml-system sfml-window z

MASTER_SITES =	http://devio.us/~bcallah/source/

MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

LIB_DEPENDS =	devel/boost \
		multimedia/sfml
#		graphics/freeglut (claimed, but appears to be a lie)

USE_GMAKE =	Yes
MAKE_FLAGS =	OPT=true CC="${CXX}" LD="${CXX}" \
		DATA_DIR=${PREFIX}/share/keeperrl \
		GFLAG="${CXXFLAGS} -DRELEASE" \
		LIBS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lsfml-graphics -lsfml-window -lsfml-system -lboost_serialization -lz ${LDFLAGS}"

# The tests are a lie too.
NO_TEST =	Yes

do-install:
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${FILESDIR}/keeperrl ${PREFIX}/bin/keeperrl
	${INSTALL_DATA_DIR} ${PREFIX}/share/keeperrl
	${INSTALL_PROGRAM} ${WRKSRC}/keeper ${PREFIX}/share/keeperrl
	${INSTALL_DATA} ${WRKSRC}/*.{png,ttf,txt} ${PREFIX}/share/keeperrl
	

.include <bsd.port.mk>
