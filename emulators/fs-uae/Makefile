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

# Attempt to # Stop Python MODULE running setup utils in root WRKSRC
# as the main build. This does not work. If we find a way then we can
# get rid of the custom do-build and do-install targets here
MODPY_BUILDDEP =	No
MODPY_SETUPUTILS =      No
CONFIGURE_STYLE =

# Launcher is in Python
pre-install:
	cd ${WRKSRC}/launcher &&  ${SETENV} ${MAKE_ENV} && \
	${MODPY_BIN} ${MODPY_SETUP} build --build-base=${WRKSRC}/launcher && \
	${MODPY_BIN} ${MODPY_SETUP} ${MODPY_DISTUTILS_INSTALL}


# Sadly needed, otherwise Python module tries to do it's thing
# Also we can't use ${MAKE_FLAGS} or we end up with double DESTDIR'd paths.
do-build:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

# Again needed, otherwise Python module tries to do it's thing
# Also we can't use ${MAKE_FLAGS} or we end up with double DESTDIR'd paths.
do-install:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} install prefix=${TRUEPREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fs-uae
	mv ${PREFIX}/share/doc/fs-uae/example.conf \
		${PREFIX}/share/examples/fs-uae/fs-uae.conf
	${SUBST_CMD} ${PREFIX}/share/examples/fs-uae/fs-uae.conf

.include <bsd.port.mk>
