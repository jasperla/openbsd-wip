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

# MI elf(5) header we don't have, needed for relocations in EFI
DISTFILES.elf =		elf_common.h
SITES.elf =		https://github.com/freebsd/freebsd-src/raw/refs/heads/releng/15.0/sys/sys/
EXTRACT_CASES =		*.h) ;;

# May be installed anywhere and served over the network.
PKG_ARCH =		*

# GPLv2+, UBDL
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Makefile.housekeeping requires GNU compiler and linker
COMPILER =		ports-gcc
COMPILER_LANGS =	c
MODGCC4_VERSION =	15

MAKE_FLAGS +=		CC=${CC} \
			V=1 \
			VERSION=${VERSION:Q}

# Passing standard variables breaks ipxe Makefiles.
MAKE_FLAGS +=		HOST_CFLAGS=${HOST_CFLAGS:Q} \
			EXTRA_LDFLAGS=${EXTRA_LDFLAGS:Q}

# arch/x86/prefix/romprefix.S:911: Error: unknown pseudo-op: `.reloc'
GNU_UTILS =		as
# objcopy: unrecognized option `--enable-deterministic-archives'
GNU_UTILS +=		objcopy
# base ld.bfd(1) 2.17 segfaults, ld.lld(1) fails one way or the other:
# ld: error: section .text file range overlaps with .shstrtab
# ld: error: output file too large: 18446744073709485768 bytes
GNU_UTILS +=		ld
.for util in ${GNU_UTILS}
MAKE_FLAGS +=		${util:U}=/usr/local/bin/g${util}
.endfor

USE_GMAKE =		Yes

BUILD_DEPENDS =		archivers/xz \
			devel/binutils>=2.45p1 \
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

# Disable stack protector guard in Makefile.efi:
# ... undefined reference to `__guard_local'
# ... undefined reference to `__stack_smash_handler'
MAKE_FLAGS +=		SPG_TEST=false


# https://ipxe.org/appnote/buildtargets
ALL_TARGET =		# empty

.for ext in pxe usb
# XXX with efi added below, this suddenly fails:
#  arch/x86_64/Makefile:58: arch/x86_64/Makefile.: No such file or directory
#  gmake: *** No rule to make target 'arch/x86_64/Makefile.'.  Stop.
#ALL_TARGET +=		bin-${_ARCH}-pcbios/undionly.${ext}
.endfor

ALL_TARGET +=		bin-${_ARCH}-efi/ipxe.efi

NO_TEST =		Yes

post-extract:
	# Provide R_* relocation macros for util/elf2efi.c without redefining
	# things our <elf.h> already provides.
	grep '^#define[[:space:]]R_' ${FULLDISTDIR}/${DISTFILES.elf} \
	    >| ${WRKSRC}/util/${DISTFILES.elf}

.include <bsd.port.mk>
