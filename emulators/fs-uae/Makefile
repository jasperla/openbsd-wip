# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		modern Amiga emulator
DISTNAME =		fs-uae-2.0.1
CATEGORIES =		emulators

HOMEPAGE =		http://fengestad.no/fs-uae/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/stable/2.0.1/

MODULES =		devel/gettext \
			lang/python
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			audio/openal \
			devel/glib2
RUN_DEPENDS =		x11/py-wxPython

WANTLIB += GL GLU SDL X11 c glib-2.0 gthread-2.0 m openal png
WANTLIB += pthread stdc++ z

USE_GMAKE =		Yes
MAKE_FLAGS +=		prefix=${PREFIX}

NO_REGRESS =		Yes

# Hack to prevent Python module doing it's own do-build/do-install
CONFIGURE_STYLE =	not_setup_tools

# Launcher is in Python
post-build:
	cd ${WRKSRC}/launcher &&  ${SETENV} ${MAKE_ENV} && \
	${MODPY_BIN} ${MODPY_SETUP} build --build-base=${WRKSRC}/launcher

post-install:
# Install the Launcher
	cd ${WRKSRC}/launcher &&  ${SETENV} ${MAKE_ENV} && \
	${MODPY_BIN} ${MODPY_SETUP} ${MODPY_DISTUTILS_INSTALL}

# Put config file in the right place
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fs-uae
	mv ${PREFIX}/share/doc/fs-uae/example.conf \
		${PREFIX}/share/examples/fs-uae/fs-uae.conf
	${SUBST_CMD} ${PREFIX}/share/examples/fs-uae/fs-uae.conf

.include <bsd.port.mk>
