# $OpenBSD$

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 macppc mips64 mips64el sparc64

# gold does not follow binutils version numbering
COMMENT =	GNU ELF-only linker
DISTNAME =	binutils-2.32
PKGNAME =	gold-1.16
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/binutils/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

MASTER_SITES =	${MASTER_SITE_GNU:=binutils/}

# Prefer clang over gcc to get a gold linked with gold.
# See the post-build target.
COMPILER =	base-clang ports-clang

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-as \
			--disable-binutils \
			--disable-gdb \
			--disable-gprof \
			--disable-ld \
			--enable-gold \
			--enable-plugins \
			--disable-nls \
			--with-system-zlib \
			--disable-install-libbfd \
			--disable-shared \
			--disable-host-shared \
			--disable-werror \
			--disable-sim \
			--disable-readline \
			--disable-libdecnumber

# The .gnu.hash section is not supported on MIPS.
# See https://reviews.llvm.org/D55878
# The default is --enable-default-hash-style=sysv, which
# is the old style. That works for MIPS.
.if !${MACHINE_ARCH:Mmips64} && !${MACHINE_ARCH:Mmips64el}
CONFIGURE_ARGS +=	--enable-default-hash-style=both
.endif

LIBTOOL_FLAGS =	--tag=disable-shared

NO_TEST =	Yes

# Link gold with gold, as a test to ensure it is working.
# Do a three-way link, to make sure that gold linked with
# gold is useful.
# But only do this if using clang, because the -fuse-ld
# option on gcc doesn't understand full paths.
# These days, there aren't any archs that gold supports
# that clang doesn't.
post-build:
	mv ${WRKSRC}/gold/ld-new ${WRKSRC}/gold/ld-first
	cd ${WRKSRC}/gold && ${SETENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		LDFLAGS='${LDFLAGS} -fuse-ld=${WRKSRC}/gold/ld-first'
	mv ${WRKSRC}/gold/ld-new ${WRKSRC}/gold/ld-second
	cd ${WRKSRC}/gold && ${SETENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		LDFLAGS='${LDFLAGS} -fuse-ld=${WRKSRC}/gold/ld-second'

# It installs these other things but we only want gold (and dwp).
post-install:
	@rm -rf ${PREFIX}/bin/{as,ld} \
		${PREFIX}/info/as.info \
		${PREFIX}/man/man1/as.1 \
		${PREFIX}/*openbsd*

.include <bsd.port.mk>
