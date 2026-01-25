# arm gets cross-built, others need testing and users.
ONLY_FOR_ARCHS =	amd64

CATEGORIES =		net firmware
COMMENT =		PXE network boot firmware
HOMEPAGE =		https://ipxe.org

# Official binaries use latest HEAD, last tagged in 2020.
V =			1.21.1
HEAD =			9c01c5a5dacb54167132d9a27259b23acdf091d6
DIST_TUPLE =		github	ipxe	ipxe	${HEAD}	.
WRKSRC =		${WRKDIST}/src
# What 'gmake version' would print for a git checkout.
VERSION =		${V}+ (g${HEAD:C/^(.{4}).+/\1/})

# Our patch-level is the number of post-tag commits from output mentioned above.
PKGNAME =		ipxe-${IPXE_ARCH}-${V}pl1175
FULLPKGNAME =		${PKGNAME}
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

# Cross-compilation architectures.
FLAVORS =		aarch64 # arm # builds, but not tested (or needed).
FLAVOR ?=		# native build

.if empty(FLAVOR)
# FWIW, on amd64 'make IPXE_ARCH=i386' also built at one point.
IPXE_ARCH =		${MACHINE_ARCH:amd64=x86_64}
BUILD_DEPENDS = 	devel/x86_64-elf/gcc
CROSS =			x86_64-none-elf-
MAKE_FLAGS =		SPG_TEST=false
.else
IPXE_ARCH =		${FLAVOR:aarch64=arm64:arm=arm32}
BUILD_DEPENDS = 	devel/arm-none-eabi/gcc,${FLAVOR}
CROSS =			${FLAVOR}-none-${FLAVOR:aarch64=elf:arm=eabi}-
.endif

# See https://ipxe.org/appnote/buildtargets for all supported variations.
AVAIL_PLATFORMS =	efi pcbios
BUILD_PLATFORMS ?=	# empty, no architecture-independent default

.if ${IPXE_ARCH:Marm*} || \
    ${IPXE_ARCH:Mx86_64}
BUILD_PLATFORMS +=	efi
DRIVERS-efi =		snp snponly
EXTENSIONS-efi =	efi
.endif

.if ${IPXE_ARCH:Mi386} || \
    ${IPXE_ARCH:Mx86_64}
BUILD_DEPENDS +=	sysutils/libisoburn,-xorriso
BUILD_PLATFORMS +=	pcbios
DRIVERS-pcbios =	undionly
EXTENSIONS-pcbios =	iso kpxe lkrn pxe usb
EXTENSIONS-efi +=	iso
.else
COMMENT_ISO =		"@comment "
.endif

USE_GMAKE =		Yes
MAKE_FLAGS +=		CROSS=${CROSS} \
			HOST_CC=${CC} \
			HOST_CFLAGS=${HOST_CFLAGS:Q} \
			V=1 \
			VERSION=${VERSION:Q}

# Avoid image changes on rebuilds.
BUILD_ID_CMD =		cksum -s OpenBSD -q | cut -d' ' -f1
MAKE_FLAGS +=		BUILD_ID_CMD=${BUILD_ID_CMD:Q} \
			SOURCE_DATE_EPOCH=0

BUILD_DEPENDS +=	archivers/xz \
			sysutils/mtools \
			sysutils/truncate
# lzma.h
HOST_CFLAGS +=		-I${LOCALBASE}/include \
			-L${LOCALBASE}/lib

# util/genfsimg relies on mktemp(1).
MAKE_ENV =		TMPDIR=${WRKDIR}

PKG_ARGS =		${AVAIL_PLATFORMS:=-D%=0} \
			${BUILD_PLATFORMS:=-D%=1}
SUBST_VARS =		BUILD_PLATFORMS \
			COMMENT_ISO \
			IPXE_ARCH

ALL_TARGET =		# empty
.for platform in ${BUILD_PLATFORMS}
.  for driver in ipxe ${DRIVERS-${platform}}
.    for extension in ${EXTENSIONS-${platform}}
ALL_TARGET +=		bin-${IPXE_ARCH}-${platform}/${driver}.${extension}
.    endfor
.  endfor
.endfor
FAKE_TARGET =		${ALL_TARGET}
NO_TEST =		Yes

# Most config/*.h include config/local/*.h, use that to provide port defaults.
# See https://ipxe.org/appnote/named_config and config/named.h for more.
do-configure:
	cp ${FILESDIR}/*.h ${WRKSRC}/config/local/

do-install:
	cd ${WRKBUILD} && pax -rw -s,.*-,ipxe/${IPXE_ARCH}/,p \
	    ${FAKE_TARGET} ${PREFIX}/share/

.include <bsd.port.mk>
