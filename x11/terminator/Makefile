# $OpenBSD: Makefile,v 1.17 2016/05/05 02:32:55 bentley Exp $

COMMENT =		GTK3 terminal emulator with split-window and tabs support

MODPY_EGG_VERSION =	1.91
DISTNAME =		terminator-${MODPY_EGG_VERSION}

CATEGORIES =		x11

HOMEPAGE =		https://gnometerminator.blogspot.com/p/introduction.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		http://launchpad.net/terminator/gtk3/${MODPY_EGG_VERSION}/+download/

MODULES =		lang/python \
			textproc/intltool
RUN_DEPENDS =		devel/vte,-python \
			devel/vte3 \
			devel/py-notify \
			sysutils/py-psutil \
			devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+3,-guic \
			x11/keybinder3 \
			x11/keybinder,-python

NO_TEST =		Yes

MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--without-icon-cache

# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
