# $ arch/ has these Makefile includes, add more when tested
# arm     arm32   arm64   i386    loong64 riscv   riscv32 riscv64 x86     x86_64
ONLY_FOR_ARCHS =	amd64

CATEGORIES =		net firmware
COMMENT =		PXE network boot firmware
HOMEPAGE =		https://ipxe.org

# FAQ says "always use the latest code", official binaries use latest HEAD
V =			1.21.1
HEAD =			33834746537d18e899559470970706d37ae2722b
DIST_TUPLE =		github	ipxe	ipxe	${HEAD}	.
# patch-level is number of commits since last tag, see git-describe(1)
WRKSRC =		${WRKDIST}/src
# what 'gmake version' would print for a git checkout,
# patch-level == # commits since tag (from git-describe(1) command in target)
VERSION =		${V}+ (g${HEAD:C/^(.{4}).+/\1/})
PKGNAME =		ipxe-${ARCH}-${V}pl1229

# May be installed anywhere and served over the network.
PKG_ARCH =		*

# GPLv2+, UBDL
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Makefile.housekeeping assumes (requires?) GCC
COMPILER =		ports-gcc
COMPILER_LANGS =	c
MODGCC4_VERSION =	15

MAKE_FLAGS +=		CC=${CC} \
			V=1 \
			VERSION=${VERSION:Q}

# (too old?) ld.bfd(1) segfaults, ld(1) must adapt, see as per clang-local(1)
#
# ld: error: relocation R_X86_64_32S cannot be used against local symbol; recompile with -fPIC
EXTRA_LDFLAGS +=	-nopie
# ld: error: cannot place ...: --execute-only does not support intermingling data and code
EXTRA_LDFLAGS +=	--no-execute-only

# Passing standard variables breaks ipxe Makefiles.
MAKE_FLAGS +=		HOST_CFLAGS=${HOST_CFLAGS:Q} \
			EXTRA_LDFLAGS=${EXTRA_LDFLAGS:Q}

# arch/x86/prefix/romprefix.S:911: Error: unknown pseudo-op: `.reloc'
GNU_UTILS =		as
# objcopy: unrecognized option `--enable-deterministic-archives'
GNU_UTILS +=		objcopy
.for util in ${GNU_UTILS}
MAKE_FLAGS +=		${util:U}=/usr/local/bin/g${util}
.endfor

USE_GMAKE =		Yes

BUILD_DEPENDS =		archivers/xz \
			devel/binutils \
			devel/gas \
			sysutils/mtools

# either of these (mkisofs or xorrisofs) and unported syslinux for ISO images
#BUILD_DEPENDS +=	sysutils/cdrtools \
#			sysutils/libisoburn,-xorriso

# lzma.h
HOST_CFLAGS +=		-I/usr/local/include

# Default is i386, see ONLY_FOR_ARCHS comment.
_ARCH =			${ARCH:amd64=x86_64}
MAKE_FLAGS +=		ARCH=${_ARCH}

# https://ipxe.org/appnote/buildtargets
ALL_TARGET =		# empty
.for ext in pxe usb
ALL_TARGET +=		bin-${_ARCH}-pcbios/undionly.${ext}
.endfor

# XXX R_386_NONE, R_ARM_NONE and a bunch of other undefined relocation macros
#     FreeBSD has them all in MI <sys/sys/elf_common.h>
#ALL_TARGET +=		bin-${_ARCH}-efi/ipxe.efi

NO_TEST =		Yes

.include <bsd.port.mk>
