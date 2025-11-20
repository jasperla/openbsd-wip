COMMENT =		frontend to the popular Tarsnap backup service

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_COMMIT = 		7264f3ed345f7da99adb0b378d68eac8cc3b3423
DISTNAME = 		tarsnap-gui-1.0.2pl20241120
SEPARATE_BUILD =	No

CATEGORIES =		sysutils

MAINTAINER =		Josh Grosse <josh@jggimi.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		devel/qmake x11/qt5
RUN_DEPENDS =		sysutils/tarsnap \
			devel/desktop-file-utils
WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Sql
WANTLIB += Qt5Widgets c m

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
		${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/tarsnap-gui.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/resources/logos/tarsnap-icon-big.png \
		${PREFIX}/share/pixmaps/tarsnap-gui.png

.include <bsd.port.mk>
