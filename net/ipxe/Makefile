# 'ls arch/' Makefile includes, enable only after runtime testing.
# arm     arm32   arm64   i386    loong64 riscv   riscv32 riscv64 x86     x86_64
ONLY_FOR_ARCHS =	amd64

CATEGORIES =		net firmware
COMMENT =		PXE network boot firmware
HOMEPAGE =		https://ipxe.org

# FAQ says "always use the latest code", official binaries use latest HEAD.
V =			1.21.1
HEAD =			33834746537d18e899559470970706d37ae2722b
DIST_TUPLE =		github	ipxe	ipxe	${HEAD}	.
WRKSRC =		${WRKDIST}/src
# what 'gmake version' would print for a git checkout,
# patch-level == # commits since tag (from git-describe(1) command in target)
VERSION =		${V}+ (g${HEAD:C/^(.{4}).+/\1/})

# Provide native binaries on all architectures to allow serving them anywhere.
PKGNAME =		ipxe-${MACHINE_ARCH}-${V}pl1229
PKG_ARCH =		*

# MI elf(5) headers missing from our <elf.h>;  required by EFI builds.
DISTFILES.elf =		elf_common.h
SITES.elf =		https://github.com/freebsd/freebsd-src/raw/refs/heads/releng/15.0/sys/sys/
# Only provide relocation macros, see util/elf2efi.c patch.
EXTRACT_CASES =		${DISTFILES.elf})    grep -x '\#define[[:space:]]R_.*' \
			    ${DISTDIR}/$$archive >| ${WRKSRC}/util/$$archive;;

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

# Avoid package changes on rebuilds.
BUILD_ID_CMD =		cksum -s OpenBSD -q | cut -d' ' -f1
MAKE_FLAGS +=		BUILD_ID_CMD=${BUILD_ID_CMD:Q} \
			SOURCE_DATE_EPOCH=0

# Passing standard variables breaks ipxe Makefiles.
MAKE_FLAGS +=		HOST_CFLAGS=${HOST_CFLAGS:Q}

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

BUILD_DEPENDS =		archivers/xz \
			devel/binutils>=2.45p1 \
			devel/gas \
			sysutils/mtools

# either of these (mkisofs or xorrisofs) and unported syslinux for ISO images
# as well as EFI USB images.
#BUILD_DEPENDS +=	sysutils/cdrtools \
#			sysutils/libisoburn,-xorriso

# lzma.h
HOST_CFLAGS +=		-I/usr/local/include

# Disable stack protector guard in Makefile.efi:
# ... undefined reference to `__guard_local'
# ... undefined reference to `__stack_smash_handler'
MAKE_FLAGS +=		SPG_TEST=false

USE_GMAKE =		Yes

NO_TEST =		Yes

# Default is i386, see ONLY_FOR_ARCHS comment.
_ARCH =			${MACHINE_ARCH:amd64=x86_64}
MAKE_FLAGS +=		ARCH=${_ARCH}

# The build system accepts multiple targets, but breaks if they are for multiple
# platforms, so we have to loop ourselves.
#
# See https://ipxe.org/appnote/buildtargets for all supported variations.
PLATFORMS ?=		# no architecture-independent default

.if ${MACHINE_ARCH:Mamd64} || \
    ${MACHINE_ARCH:Marm64}
PLATFORMS +=		efi
.  for driver in ipxe snp snponly
.    for extension in efi
TARGETS-efi +=		bin-${_ARCH}-efi/${driver}.${extension}
.    endfor
.  endfor
.endif

.if ${MACHINE_ARCH:Mamd64}
PLATFORMS +=		bios
.  for driver in undionly
.    for extension in kpxe lkrn pxe usb
TARGETS-bios +=		bin-${_ARCH}-pcbios/${driver}.${extension}
.    endfor
.  endfor
.endif

_DEF_ENV =		${SETENV} ${MAKE_ENV}
_DEF_MAKE =		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE}

do-build:
.for platform in ${PLATFORMS}
	@cd ${WRKBUILD} && ${_DEF_ENV} ${_DEF_MAKE} ${TARGETS-${platform}}
.endfor

DATA_DIR =		${PREFIX}/share/ipxe/${MACHINE_ARCH}

SUBST_VARS =		PLATFORMS

do-install:
.for platform in ${PLATFORMS}
	${INSTALL_DATA_DIR} ${DATA_DIR}
	cd ${WRKBUILD} && ${INSTALL_DATA} ${TARGETS-${platform}} ${DATA_DIR}/
.endfor

.include <bsd.port.mk>
