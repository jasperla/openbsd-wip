# $OpenBSD$

V =		2.0.0
COMMENT =	free, cross-platform emulator for GW-BASIC family (PC-BASIC)
DISTNAME =	pcbasic-${V}
CATEGORIES =	lang

HOMEPAGE =	http://www.pc-basic.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/robhagemans/pcbasic/releases/download/v${V}/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-parallel \
		devel/py-serial \
		devel/sdl2-gfx \
		math/py-numpy

TEST_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
