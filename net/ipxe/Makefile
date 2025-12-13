# 'ls arch/' Makefile includes, enable only after runtime testing.
# arm     arm32   arm64   i386    loong64 riscv   riscv32 riscv64 x86     x86_64
#
# arm64 builds and boots, but see devel/binutils LD_ARCHS comment
ONLY_FOR_ARCHS =	amd64

CATEGORIES =		net firmware
COMMENT =		PXE network boot firmware
HOMEPAGE =		https://ipxe.org

# Official binaries use latest HEAD, last tagged in 2020.
V =			1.21.1
HEAD =			fb1188936ca29af61709afd8b866ea55d4a05a67
DIST_TUPLE =		github	ipxe	ipxe	${HEAD}	.
WRKSRC =		${WRKDIST}/src
# What 'gmake version' would print for a git checkout.
VERSION =		${V}+ (g${HEAD:C/^(.{5}).+/\1/})

# Our patch-level is the number of post-tag commits from output mentioned above.
PKGNAME =		ipxe-${MACHINE_ARCH}-${V}pl1152
PKG_ARCH =		*

# MI elf(5) headers missing from our <elf.h>;  required by EFI builds.
DISTFILES.elf =		elf_common.h
SITES.elf =		https://github.com/freebsd/freebsd-src/raw/refs/heads/releng/15.0/sys/sys/
# Only provide relocation macros, see util/elf2efi.c patch.
EXTRACT_CASES =		${DISTFILES.elf})  grep -x '\#define[[:space:]]R_.*' \
			    ${DISTDIR}/$$archive >| ${WRKSRC}/util/$$archive ;;

# amd64 BIOS bootloader for USB and ISO images.
DISTFILES.lin =		syslinux-6.03.tar.xz
SITES.lin =		https://www.kernel.org/pub/linux/utils/boot/syslinux/
EXTRACT_CASES +=	${DISTFILES.lin})  xz -T${MAKE_JOBS} -d \
			    <${DISTDIR}/$$archive | ${TAR} -xf - -s ',.*/,,' \
			    \*/{ldlinux.c32,isolinux.bin} ;;

# iPXE:         GPLv2+, UBDL
# elf_common.h: BSD-2-Clause
# syslinux:     GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Only GNU tools are suported.
COMPILER =		ports-gcc
COMPILER_LANGS =	c
USE_GMAKE =		Yes
MAKE_FLAGS =		CC=${CC} \
			HOST_CFLAGS=${HOST_CFLAGS:Q} \
			V=1 \
			VERSION=${VERSION:Q}
# arch/x86/prefix/romprefix.S:911: Error: unknown pseudo-op: `.reloc'
# objcopy: unrecognized option `--enable-deterministic-archives'
# base ld.bfd(1) 2.17 segfaults, base ld.lld(1) always fails:
# ld: error: section .text file range overlaps with .shstrtab
# ld: error: output file too large: 18446744073709485768 bytes
GNU_UTILS =		as objcopy ld
.for util in ${GNU_UTILS}
MAKE_FLAGS +=		${util:U}=/usr/local/bin/g${util}
.endfor
# Disable stack protector guard in Makefile.efi:
# ... undefined reference to `__guard_local'
# ... undefined reference to `__stack_smash_handler'
MAKE_FLAGS +=		SPG_TEST=false

# Avoid package changes on rebuilds.
BUILD_ID_CMD =		cksum -s OpenBSD -q | cut -d' ' -f1
MAKE_FLAGS +=		BUILD_ID_CMD=${BUILD_ID_CMD:Q} \
			SOURCE_DATE_EPOCH=0

BUILD_DEPENDS =		archivers/xz \
			devel/binutils>=2.45.1p1 \
			devel/gas \
			sysutils/libisoburn,-xorriso \
			sysutils/mtools \
			sysutils/truncate

# lzma.h
HOST_CFLAGS +=		-I/usr/local/include

# Default is i386, see ONLY_FOR_ARCHS comment.
_ARCH =			${MACHINE_ARCH:amd64=x86_64}
MAKE_FLAGS +=		ARCH=${_ARCH}

# See https://ipxe.org/appnote/buildtargets for all supported variations.
PLATFORMS ?=		# empty, no architecture-independent default

.if ${MACHINE_ARCH:Mamd64} || \
    ${MACHINE_ARCH:Marm64}
PLATFORMS +=		efi
DRIVERS-efi =		ipxe snp snponly
# USB images require some unported syslinux script/program.
EXTENSIONS-efi =	efi iso
.  for driver in ${DRIVERS-efi}
.    for extension in ${EXTENSIONS-efi}
TARGETS-efi +=		bin-${_ARCH}-efi/${driver}.${extension}
.    endfor
.  endfor
.endif

.if ${MACHINE_ARCH:Mamd64}
PLATFORMS +=		pcbios
DRIVERS-pcbios =	ipxe undionly
EXTENSIONS-pcbios =	iso kpxe lkrn pxe usb
.  for driver in ${DRIVERS-pcbios}
.    for extension in ${EXTENSIONS-pcbios}
TARGETS-pcbios +=	bin-${_ARCH}-pcbios/${driver}.${extension}
.    endfor
.  endfor
.endif

# util/genfsimg relies on mktemp(1).
MAKE_ENV =		TMPDIR=${WRKDIR}

NO_TEST =		Yes

DATA_DIR =		${PREFIX}/share/ipxe/${MACHINE_ARCH}
PKG_ARGS =		${PLATFORMS:=-D%=1}
SUBST_VARS =		PLATFORMS

# Most config/*.h include config/local/*.h, use that to provide port defaults.
# See https://ipxe.org/appnote/named_config and config/named.h for more.
do-configure:
	cp ${FILESDIR}/*.h ${WRKSRC}/config/local/

do-build:
.for platform in ${PLATFORMS}
	@${ECHO_MSG} \## platform: ${platform}
	@${ECHO_MSG} \### targets: ${TARGETS-${platform}:T}
	@${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKBUILD} -f ${MAKE_FILE} \
	    ${MAKE_FLAGS} ${TARGETS-${platform}}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${DATA_DIR}
.for platform in ${PLATFORMS}
	${INSTALL_DATA_DIR} ${DATA_DIR}/${platform}
	cd ${WRKBUILD} && ${INSTALL_DATA} ${TARGETS-${platform}} \
	    ${DATA_DIR}/${platform}/
.endfor

.include <bsd.port.mk>
