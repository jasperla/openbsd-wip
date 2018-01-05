# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	map keyboard and mouse controls to a gamepad

GH_ACCOUNT =	AntiMicro
GH_PROJECT =	antimicro
GH_TAGNAME =	2.23

CATEGORIES =	games

MAINTAINER =		Thomas Frohwein <frohwein@ymail.com>

#GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xi Xtst c m
WANTLIB += QtCore QtGui QtNetwork

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl2 \
			x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info

NO_TEST =		Yes

.include <bsd.port.mk>
