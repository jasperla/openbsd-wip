# $OpenBSD$

V =		0.7.5
COMMENT =	ridiculous shoot-em-up game
DISTNAME =	mars_source_${V}
PKGNAME =	mars-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://mars-game.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xrandr c fribidi m pthread sfml-audio
WANTLIB += sfml-graphics sfml-system sfml-window stdc++ tag

MASTER_SITES =	https://github.com/downloads/thelaui/M.A.R.S./

MODULES =	devel/cmake

LIB_DEPENDS =	audio/taglib \
		devel/fribidi \
		multimedia/sfml

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/mars-game

.include <bsd.port.mk>
