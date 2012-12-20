# $OpenBSD$

COMMENT =	Mah Jongg four players board game for KDE
DISTNAME =	kajongg-${MODKDE_VERSION}
HOMEPAGE =	http://www.kde.org/applications/games/kajongg/

MODULES =	lang/python

BUILD_DEPENDS =	x11/kde4/py-kde

RUN_DEPENDS =	devel/py-twisted/core \
		STEM->=${MODKDE_VERSION}:x11/kde4/libkmahjongg \
		x11/kde4/py-kde

# Avoid extra BUILD_DEPENDS
CONFIGURE_ARGS =	-DINSTALL_KAJONGG:Bool=TRUE

MODPY_ADJ_FILES =	src/deferredutil.py \
			src/kajongg.py \
			src/kajonggtest.py \
			src/kajonggserver.py \
			src/scoringtest.py \
			src/server.py \
			setup.py

.include <bsd.port.mk>
