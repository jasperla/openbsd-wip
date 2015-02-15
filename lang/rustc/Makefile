# $OpenBSD$

# bootstrap only available for amd64, for now
ONLY_FOR_ARCHS-main =	amd64
#SHARED_ONLY =		???

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

# source is currently based on snapshots build
# we use a fake version number for indexing the date (and commitid)
# TODO: should be changed when 1.0.0-stable will be issue
#       (see post-extract target too)
V =			0.0.0.20150204.ac134f7
BOOTSTRAP_V =		${V}
SOURCE_V =		1.0.0-dev
DISTNAME =		rustc-${V}

MULTI_PACKAGES =	-main
PSEUDO_FLAVORS =	no_doc
FLAVOR ?=

# PKGNAME without commit-id
PKGNAME =		rustc-${V:C/\.[^.]*$//}
PKGNAME-main =		${PKGNAME}
PKGNAME-doc =		rustc-doc-${V:C/\.[^.]*$//}

BOOTSTRAP-amd64 =	rust-stage0-${BOOTSTRAP_V}-openbsd-${MACHINE_ARCH}.tar.gz

# TODO: see how "4e7c5e5c" would evolve after 1.0.0
SHARED_LIBS =		arena-4e7c5e5c		0.0 \
			flate-4e7c5e5c		0.0 \
			fmt_macros-4e7c5e5c	0.0 \
			getopts-4e7c5e5c	0.0 \
			graphviz-4e7c5e5c	0.0 \
			log-4e7c5e5c		0.0 \
			rbml-4e7c5e5c		0.0 \
			rustc-4e7c5e5c		0.0 \
			rustc_back-4e7c5e5c	0.0 \
			rustc_borrowck-4e7c5e5c	0.0 \
			rustc_driver-4e7c5e5c	0.0 \
			rustc_llvm-4e7c5e5c	0.0 \
			rustc_privacy-4e7c5e5c	0.0 \
			rustc_resolve-4e7c5e5c	0.0 \
			rustc_trans-4e7c5e5c	0.0 \
			rustc_typeck-4e7c5e5c	0.0 \
			rustdoc-4e7c5e5c	0.0 \
			serialize-4e7c5e5c	0.0 \
			std-4e7c5e5c		0.0 \
			syntax-4e7c5e5c		0.0 \
			term-4e7c5e5c		0.0 \
			test-4e7c5e5c		0.0

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/

MAINTAINER =		Sebastien Marie <semarie-openbsd@latrappe.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB-main +=		c m pthread

#MASTER_SITES =		https://static.rust-lang.org/dist/
MASTER_SITES =		http://semarie.free.fr/rust/
MASTER_SITES0 =		http://semarie.free.fr/rust/
#MASTER_SITES =		http://localhost/~semarie/rust/
#MASTER_SITES0 =		http://localhost/~semarie/rust/

EXTRACT_SUFX =		-src.tar.gz

DIST_SUBDIR =		rustc
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
.if defined(BOOTSTRAP-${MACHINE_ARCH})
DISTFILES +=            ${BOOTSTRAP-${MACHINE_ARCH}}:0
.endif

SUPDISTFILES =		${BOOTSTRAP-amd64}:0

# MACHINE_ARCH to TRIPLE_ARCH conversion
.if "${MACHINE_ARCH}" == "amd64"
TRIPLE_ARCH =		x86_64-unknown-openbsd
.endif
SUBST_VARS +=		TRIPLE_ARCH

MODULES +=		gcc4 \
			lang/python

# rustllvm need c++11
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???

# note: VERBOSE permit to unhide Makefile processing
# 	RUSTFLAGS extra flags passed to rust
# 		-Z print-link-args : unhide link call
#       RUST_LOG helper
MAKE_ENV =		VERBOSE=1 \
			RUSTFLAGS="-Z print-link-args" \
			RUST_LOG="${RUST_LOG}"

#FAKE_FLAGS =		???

# note: helper, set RUST_TEST_TASKS=1 to not run tests in parallel
TEST_FLAGS =		RUST_TEST_TASKS="${RUST_TEST_TASKS}"


# build/configuration variables
#
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-valgrind-rpass \
			--enable-local-rust \
			--local-rust-root="${WRKDIR}/rust-stage0" \
			--prefix="${LOCALBASE}" \
			--mandir="${LOCALBASE}/man"

# need for libbacktrace
USE_LIBTOOL =		gnu

# documentation package
.if ${FLAVOR:L:Mno_doc}
CONFIGURE_ARGS +=	--disable-docs
.else
MULTI_PACKAGES += -doc
.endif

.ifdef LOCAL_LLVM_FOR_RUST
# TODO: rebuild llvm is a shame
# 	but the llvm in ports not seems to work for this purpose
#CONFIGURE_ARGS +=	--llvm-root="${LOCALBASE}"
#BUILD_DEPENDS +=	devel/llvm

CONFIGURE_ARGS +=	--llvm-root="${LOCAL_LLVM_FOR_RUST}"
.endif

TEST_TARGET =		check

# Create a wrapper for bootstrap (if needed)
post-extract:
	if [ ! -x ${WRKDIR}/rust-stage0/bin/rustc ] ; then \
		echo '#!/bin/sh' > ${WRKDIR}/rust-stage0/bin/rustc; \
		echo 'LD_LIBRARY_PATH="${WRKDIR}/rust-stage0/lib:$${LD_LIBRARY_PATH}" exec ${WRKDIR}/rust-stage0/bin/rustc.bin "$${@}"' >> ${WRKDIR}/rust-stage0/bin/rustc; \
		chmod +x ${WRKDIR}/rust-stage0/bin/rustc; fi
	mv ${WRKDIR}/rustc-${SOURCE_V} ${WRKDIR}/rustc-${V}

# When rebuilding a rustc version with a bootstrap of same version
# we should skip stage0 flags, and use stage1, because stage0 contains
# tricks for previous snapshots.
.if "${V}" == "${BOOTSTRAP_V}"
post-patch:
	perl -pi -e \
		's|^ifneq \(\$$\(strip .\(CFG_BUILD\)\),.\(strip .\(3\)\)\)|ifeq (1,1)|' \
		${WRKSRC}/mk/main.mk
.endif

# Check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 1572864 ]; then \
		echo datasize limit is too low - amd64 build takes approx 1.5GB; \
		exit 1; fi

# Post-install
#  - install a wrapper for rustc (for setting --sysroot)
#  - compile python gdb helper
#  - remove unneeded files
#  - do versioning of lib
#  - reduce size by linking lib to rustlib
post-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	mv ${PREFIX}/bin/rustc ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	${SUBST_PROGRAM} -c \
		files/rustc ${PREFIX}/bin/rustc
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/rustlib/etc
	rm ${PREFIX}/lib/rustlib/{components,rust-installer-version} \
		${PREFIX}/lib/rustlib/manifest-{rustc,rust-docs}
.for libname libver in ${SHARED_LIBS}
	mv ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib/lib${libname}.so{,.${libver}}
	rm ${PREFIX}/lib/lib${libname}.so
	ln -fs ./rustlib/${TRIPLE_ARCH}/lib/lib${libname}.so.${libver} \
		${PREFIX}/lib
.endfor

# Create a bootstrapper.
# The archive in ${WRKDIR}/bootstrap should be suitable for bootstrapping.
# NOTE: currently, the rustc.bin is *dynamically linked*
#       so, include needed system libraries.
#	a wrapper will be create at post-extract, if need
bootstrap: build
	cd ${WRKBUILD} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} rustc-stage3
	rm -rf ${WRKDIR}/bootstrap
	${INSTALL_PROGRAM_DIR} ${WRKDIR}/bootstrap/rust-stage0/{bin,lib}
	${INSTALL_PROGRAM} ${WRKBUILD}/${TRIPLE_ARCH}/stage3/bin/rustc \
		${WRKDIR}/bootstrap/rust-stage0/bin/rustc.bin
	ldd ${WRKDIR}/bootstrap/rust-stage0/bin/rustc.bin \
		| sed -ne 's,^.* rlib [^/]*,,p' \
		| xargs -J % -- cp % ${WRKDIR}/bootstrap/rust-stage0/lib
	umask 022 && cd ${WRKDIR}/bootstrap \
		&& tar zcf rust-stage0-${V}-openbsd-${MACHINE_ARCH}.tar.gz \
			rust-stage0

.include <bsd.port.mk>
