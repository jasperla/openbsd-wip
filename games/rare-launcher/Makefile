COMMENT =	open source alternative for Epic Games Launcher

MODPY_DISTV =	1.12.0
PKGNAME =	rare-launcher-${MODPY_DISTV}pl0

# 7123739ae66368f4a087aa915e7d07fd9d17135b: commit from 2026-10-01
DIST_TUPLE +=	github RareDevs Rare 7123739ae66368f4a087aa915e7d07fd9d17135b .

CATEGORIES =	games
HOMEPAGE =	https://raredevs.github.io/Rare/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPL-3.0+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools_scm

# optional: pypresence (for discord RPC)
BUILD_DEPENDS = converters/py-vdf \
		games/legendary
RUN_DEPENDS =	converters/py-vdf \
		games/legendary \
		textproc/py-orjson \
		x11/py-qtawesome \
		x11/qt6/pyside6/pyside

.include <bsd.port.mk>
