COMMENT =		frontend to the popular Tarsnap backup service

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_COMMIT = 		14a4fd2ed3732ca19c4bb6275f2e09c462825043
DISTNAME = 		tarsnap-gui-1.1.0
SEPARATE_BUILD =	No

CATEGORIES =		sysutils

MAINTAINER =		Josh Grosse <josh@jggimi.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		devel/qmake x11/qt5
RUN_DEPENDS =		sysutils/tarsnap \
			devel/desktop-file-utils

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
		${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/tarsnap-gui.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/resources/logos/tarsnap-icon-big.png \
		${PREFIX}/share/pixmaps/tarsnap-gui.png

.include <bsd.port.mk>
