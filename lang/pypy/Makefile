ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT =		fast implementation of the Python language

V =			7.3.11
PYLANG_V =		3.9
DISTNAME =		pypy${PYLANG_V}-v${V}-src
PKGNAME =		pypy-${V}

CATEGORIES =		lang

HOMEPAGE =		https://pypy.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# PyPy is MIT; the Python libs it comes with have the same license as Python
PERMIT_PACKAGE =	Yes

WANTLIB +=		bz2 c crypto curses expat ffi gdbm iconv intl m
WANTLIB +=		panel pthread sqlite3 ssl ${MODTCL_LIB}
WANTLIB +=		${MODTK_LIB} util z

# XXX check if it's really needed
USE_NOEXECONLY =	Yes

LIB_DEPENDS +=		databases/sqlite3

MASTER_SITES =		https://downloads.python.org/pypy/
MASTER_SITES0 =		https://theunixzoo.co.uk/distfiles/ \
			https://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

DIST_SUBDIR =		pypy
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			pycparser-2.21.tar.gz:0


# XXX tidy up
MASTER_SITES0 =		https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/

MODULES +=		lang/python x11/tk
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX \
			-i MODPY_PY0EXTENSION \
			-i MODPY_VERSION \
			-i MACHINE_ARCH

USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx,python3 \
			databases/gdbm \
			devel/py-cparser \
			${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			databases/gdbm

post-extract:
	@if [ `ulimit -d` -lt $$((5*1024*1024)) ]; then \
	    echo datasize limit is too low - amd64 build takes approx 5GB; \
	    exit 1; fi

SUBST_VARS +=	MODTK_INCDIR MODTCL_INCDIR MODTK_LIB MODTCL_LIB

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib_pypy/_tkinter/tklib_build.py
	# prevent crap in the plist
	rm ${WRKSRC}/lib_pypy/_tkinter/tklib_build.py.beforesubst

MAKE_ENV += PYTHONPATH=${WRKDIR}/pycparser-2.21
do-build:
	cd ${WRKSRC}/pypy/goal/ && ${SETENV} ${MAKE_ENV} \
	  PYPY_USESSION_DIR=${WRKDIR}/usession \
	  PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  ${MODPY_BIN} ../../rpython/bin/rpython --source --opt=jit
	cd ${WRKDIR}/usession/testing_1 && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} LDFLAGS_LINK="-Wl,-z,wxneeded -pthread"

# Pre-compile python and CFFI modules.
# This all has to be done in WRKSRC.
GOAL_DIR=${WRKSRC}/pypy/goal/
pre-install:
	cp ${WRKDIR}/usession/testing_1/pypy${PYLANG_V}-c ${GOAL_DIR}
	cp ${WRKDIR}/usession/testing_1/libpypy${PYLANG_V}-c.so ${GOAL_DIR}
	cd ${WRKSRC} && LD_LIBRARY_PATH=${GOAL_DIR} ${GOAL_DIR}/pypy${PYLANG_V}-c \
		-m compileall lib_pypy
	cd ${WRKSRC} && LD_LIBRARY_PATH=${GOAL_DIR} ${GOAL_DIR}/pypy${PYLANG_V}-c \
		-m compileall -x test lib-python/3/
	cd ${GOAL_DIR} && LD_LIBRARY_PATH=${GOAL_DIR} \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		PYTHONPATH=../.. \
		./pypy${PYLANG_V}-c ../../lib_pypy/pypy_tools/build_cffi_imports.py

PYPY_INST_LIB_DIR = ${PREFIX}/pypy/lib
PYPY_LD_LIBRARY_PATH = LD_LIBRARY_PATH=${PYPY_INST_LIB_DIR}
do-install:
	mkdir -p ${PREFIX}/pypy/bin
	mkdir -p ${PYPY_INST_LIB_DIR}
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy${PYLANG_V}-c \
		${PREFIX}/pypy/bin/pypy
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/libpypy${PYLANG_V}-c.so \
		${PYPY_INST_LIB_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/include
	cp -rp ${WRKSRC}/include/* ${PREFIX}/pypy/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/include
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib_pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib-python/${PYLANG_V}
	cp -rp ${WRKSRC}/lib_pypy/* ${PREFIX}/pypy/lib_pypy
	cp -rp ${WRKSRC}/lib-python/* ${PREFIX}/pypy/lib-python/${PYLANG_V}
	find ${PREFIX}/pypy/lib_pypy/ -name '*.[co]' -delete
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/lib_pypy
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PREFIX}/pypy/lib-python/${PYLANG_V}
	cd ${PREFIX}/bin && ln -s ../pypy/bin/pypy
	cd ${PREFIX}/lib && ln -s ../pypy/lib/libpypy${PYLANG_V}-c.so
	# remove patch orig files so they dont appear in the plist
	find ${PREFIX} -name '*.py.orig' -delete

.include <bsd.port.mk>
