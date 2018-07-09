# $OpenBSD$

# gold does not follow binutils version numbering
COMMENT =	GNU ELF-only linker
DISTNAME =	binutils-2.30.97
PKGNAME =	gold-1.16
CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/binutils/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

#MASTER_SITES =	${MASTER_SITE_GNU:=binutils/}
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

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
			--disable-host-shared

# gold can link gold
# uncomment after installation and rebuild if you want to try
#CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -fuse-ld=gold"

MAKE_FLAGS =	CXXFLAGS="${CXXFLAGS} -Wno-c++11-narrowing"

LIBTOOL_FLAGS =	--tag=disable-shared

# It installs these other things but we only want gold (and dwp).
post-install:
	@rm -rf ${PREFIX}/bin/{as,ld} \
		${PREFIX}/info/as.info \
		${PREFIX}/man/man1/as.1 \
		${PREFIX}/*openbsd*

.include <bsd.port.mk>
