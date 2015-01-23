# $OpenBSD$

# bootstrap only available for amd64, for now
ONLY_FOR_ARCHS =	amd64
#SHARED_ONLY =		???

COMMENT =		compiler for Rust Language
# COMMENT-doc =		???

# source is currently based on snapshots build
# we use a fake version number for indexing the date (and commitid)
# TODO: should be changed when 1.0.0-stable will be issue
#       (see post-extract target too)
V =			0.0.0.20150115.9ade482
BOOTSTRAP_V =		${V}
SOURCE_V =		1.0.0-dev
DISTNAME =		rustc-${V}

# PKGNAME without commit-id
PKGNAME =		${DISTNAME:C/\.[^.]*$//}

BOOTSTRAP-amd64 =	rust-stage0-${BOOTSTRAP_V}-openbsd-${MACHINE_ARCH}.tar.gz

# TODO: complete this
#SHARED_LIBS =		???

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/

MAINTAINER =		Sebastien Marie <semarie-openbsd@latrappe.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB +=		c m pthread

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

MODULES +=		gcc4 \
			lang/python

# rustllvm need c++11
# TODO: need c ? or just c++ ?
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???

# note: VERBOSE  permit to unhide Makefile processing
# 	RUSTFLAGS extra flags passed to rust
# 		-Z print-link-args : unhide link call
#       RUST_LOG helper
MAKE_ENV =		VERBOSE=1 \
			RUSTFLAGS="-Z print-link-args" \
			RUST_LOG="${RUST_LOG}"

#FAKE_FLAGS =		???
#TEST_FLAGS =		???


# build/configuration variables
#
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
#USE_GROFF =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-valgrind-rpass \
			--disable-jemalloc \
			--enable-local-rust \
			--local-rust-root="${WRKDIR}/rust-stage0" \
			--prefix="${LOCALBASE}" \
			--mandir="${LOCALBASE}/man"

# need for libbacktrace
USE_LIBTOOL =		gnu

# TODO: nodoc for now
CONFIGURE_ARGS +=	--disable-docs

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

# Install a wrapper for rustc
#   TODO: need because of too simplist os::load_self implementation
# Compile python gdb helper
post-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/rustlib/x86_64-unknown-openbsd/bin
	mv ${PREFIX}/bin/rustc ${PREFIX}/lib/rustlib/x86_64-unknown-openbsd/bin
	${SUBST_PROGRAM} -c \
		files/rustc ${PREFIX}/bin/rustc
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/rustlib/etc

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
	${INSTALL_PROGRAM} ${WRKBUILD}/x86_64-unknown-openbsd/stage3/bin/rustc \
		${WRKDIR}/bootstrap/rust-stage0/bin/rustc.bin
	ldd ${WRKDIR}/bootstrap/rust-stage0/bin/rustc.bin \
		| sed -ne 's,^.* rlib [^/]*,,p' \
		| xargs -J % -- cp % ${WRKDIR}/bootstrap/rust-stage0/lib
	umask 022 && cd ${WRKDIR}/bootstrap \
		&& tar zcf rust-stage0-${V}-openbsd-${MACHINE_ARCH}.tar.gz \
			rust-stage0
	
.include <bsd.port.mk>
