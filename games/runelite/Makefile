COMMENT =	open source OldSchool RuneScape client

V =		2.6.10
PKGNAME =	runelite-${V}

SITES =	https://github.com/runelite/launcher/releases/download/$V/
SITES.icon =	https://raw.githubusercontent.com/runelite/launcher/$V/appimage/
DISTFILES =	runelite-$V{RuneLite}.jar
DISTFILES.icon =	runelite-$V{runelite}.png

CATEGORIES =	games

EXTRACT_ONLY =

NO_BUILD =	Yes
NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	1.8+

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		java/javaPathHelper \
		x11/gtk+4,-guic

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps/ \
		${PREFIX}/share/applications/ \
		${PREFIX}/share/java/classes/
	${INSTALL_DATA} ${FULLDISTDIR}/runelite-$V.png \
		${PREFIX}/share/icons/hicolor/128x128/apps/runelite.png
	${SUBST_DATA} ${FILESDIR}/runelite.desktop \
		${PREFIX}/share/applications/runelite.desktop
	${SUBST_PROGRAM} ${FILESDIR}/runelite.sh \
		${PREFIX}/bin/runelite
	${INSTALL_DATA} ${FULLDISTDIR}/runelite-$V.jar \
		${PREFIX}/share/java/classes/runelite.jar

.include <bsd.port.mk>
