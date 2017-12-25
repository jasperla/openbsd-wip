# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	roguelite dungeon crawler game

GH_ACCOUNT =	Cirrus-Minor
GH_PROJECT =	witchblast
GH_TAGNAME =	v0.7.5

CATEGORIES =	games x11

MAINTAINER =		Thomas Frohwein (frohwein@ymail.com)

# GPLv3, Music is CC-BY-NC-SA, fonts are SIL Open Font License
PERMIT_PACKAGE_CDROM =	Non-commercial
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += sfml-audio sfml-graphics sfml-system sfml-window

CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

COMPILER =		base-clang ports-gcc ports-clang

# Dependencies
MODULES =		devel/cmake
LIB_DEPENDS =		multimedia/sfml

NO_TEST =		Yes

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/witchblast ${PREFIX}/bin/witchblast

.include <bsd.port.mk>
