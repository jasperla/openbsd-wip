ONLY_FOR_ARCHS =	aarch64 amd64
DPB_PROPERTIES =	parallel

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

WANTLIB +=		bz2 c lib/eopenssl11/crypto curses expat ffi gdbm iconv intl lzma m
WANTLIB +=		panel pthread sqlite3 lib/eopenssl11/ssl ${MODTCL_LIB}
WANTLIB +=		${MODTK_LIB} util z

# Note that PyPy is notoriously annoying to get working with LibreSSL, so we
# use OpenSSL for now. This may change in the future when pypy moves to using
# more recent Python and pyca internals where the #ifdef maze is less daunting.
LIB_DEPENDS =		archivers/xz \
			databases/gdbm \
			databases/sqlite3 \
			security/openssl/1.1
BUILD_DEPENDS +=	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

# Build segfaults without it.
USE_NOEXECONLY =	Yes

MASTER_SITES =		https://downloads.python.org/pypy/
MASTER_SITES0 =		https://theunixzoo.co.uk/distfiles/ \
			https://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

DIST_SUBDIR =		pypy
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			pycparser-2.21.tar.gz:0

MASTER_SITES0 =		https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/

MODULES +=		lang/python x11/tk
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX \
			-i MODPY_PY0EXTENSION \
			-i MODPY_VERSION \
			-i MACHINE_ARCH


USE_GMAKE =		Yes

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
		${MAKE_PROGRAM} -j${MAKE_JOBS} \
		LDFLAGS_LINK="-Wl,-z,wxneeded -Wl,-rpath=${LOCALBASE}/lib/eopenssl11 -pthread"

# Pre-compile python and CFFI modules.
#
# It's normal for the build_cffi_imports step to spit out some errors like:
#   ValueError: unsupported hash type blake2b
# (confirmed with upstream)
PYPY_PREFIX =		${PREFIX}/pypy
do-install:
	mkdir -p ${PYPY_PREFIX}/bin
	mkdir -p ${PYPY_PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy${PYLANG_V}-c \
		${PYPY_PREFIX}/bin/pypy
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/libpypy${PYLANG_V}-c.so \
		${PYPY_PREFIX}/lib
	${INSTALL_DATA_DIR} ${PYPY_PREFIX}/include
	cp -rp ${WRKSRC}/include/* ${PYPY_PREFIX}/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PYPY_PREFIX}/include
	cp -rp ${WRKSRC}/lib_pypy ${PYPY_PREFIX}/lib_pypy
	cp -rp ${WRKSRC}/lib-python ${PYPY_PREFIX}/lib-python

	# XXX This next command seg faults on machines new enough to do the
	# EXECONLY stuff (and arm64).
	#
	# You can repro out-of-build with:
	# $ pypy -c "import cffi; ffi = cffi.FFI(); ffi.dlopen('lib_m')"
	#
	# Does something in cffi need -Wl,--no-execute-only?
	LD_LIBRARY_PATH=${PYPY_PREFIX}/lib ${PYPY_PREFIX}/bin/pypy \
			-m compileall ${PYPY_PREFIX}/lib_pypy
	LD_LIBRARY_PATH=${PYPY_PREFIX}/lib ${PYPY_PREFIX}/bin/pypy \
			-m compileall -x test ${PYPY_PREFIX}/lib-python/3/
	cd ${WRKSRC} && \
		LD_LIBRARY_PATH=${PYPY_PREFIX}/lib:${LOCALBASE}/lib/eopenssl11 \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl11 -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include/eopenssl11 \
		-I${LOCALBASE}/include" CFLAGS="-Wno-deprecated-declarations" \
		PYTHONPATH=`pwd` \
		${PYPY_PREFIX}/bin/pypy lib_pypy/pypy_tools/build_cffi_imports.py
	@# The last command junks up the lib/ directory for some reason.
	rm -rf ${PYPY_PREFIX}/lib/pypy${PYLANG_V}/

	find ${PYPY_PREFIX}/lib_pypy/ -name '*.[co]' -delete
	chown -R ${SHAREOWN}:${SHAREGRP} ${PYPY_PREFIX}/lib_pypy/
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PYPY_PREFIX}/lib-python/
	cd ${PREFIX}/bin && ln -s ../pypy/bin/pypy
	cd ${PREFIX}/lib && ln -s ../pypy/lib/libpypy${PYLANG_V}-c.so
	# remove patch orig files so they dont appear in the plist
	find ${PREFIX} -name '*.py.orig' -delete

.include <bsd.port.mk>
