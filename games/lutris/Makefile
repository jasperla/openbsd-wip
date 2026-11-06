#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???

#		|----------------------------------------------------------|
COMMENT =	installer and launcher for games
# COMMENT-foo =	???	for multi packages

MODPY_DISTV =	0.5.22

DISTNAME =	lutris_${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/_/-/g}
#PKGNAME-foo =	???	for multi packages

#DIST_TUPLE +=	platform account project id subdir

CATEGORIES =	games

HOMEPAGE =	https://lutris.net/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# XXX: what license exactly?
# If both PERMIT_* are Yes, just setting 'PERMIT_PACKAGE=Yes' is enough.
PERMIT_PACKAGE =	Yes

#WANTLIB =		???

SITES =		https://lutris.net/releases/
EXTRACT_SUFX =	.tar.xz

#FIX_CRLF_FILES =	???

#DIST_SUBDIR =		???
#MODULES =	devel/meson
MODULSE =	lang/python

#MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
#			or flit_core, hatchling, etc - see python-module(5)

# XXX: others: gettext-tools for build (msgmft)
# per INSTALL.rst:
# py3-requests
# py3-pillow
# py3-setproctitle
# py3-distro
# py3-evdev

#BUILD_DEPENDS =	???
# bash is used to run commands from python, e.g. in
# lutris/installer/commands.py
RUN_DEPENDS =	archivers/7zip \
		archivers/innoextract \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		shells/bash \
		textproc/py-yaml \
		www/webkitgtk4 \
		x11/gtk+4,-guic
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???

#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS =	???
#CONFIGURE_ENV =	???

# XXX: is this NO_BUILD=Yes?
NO_BUILD =		Yes
#NO_TEST =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/lutris
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

do-install:
	cd ${WRKSRC}; python3 setup.py install --prefix=${PREFIX}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

.include <bsd.port.mk>
