#	$OpenBSD$

CATEGORIES=	sysutils
COMMENT=	U-Boot boot loader for SolidRun i.MX 6
GH_ACCOUNT=	SolidRun
GH_PROJECT=	u-boot-imx6
DISTNAME=	u-boot-solidrun-imx6-20151013
GH_COMMIT=	408544d61f230060f18ffe2e06565deadbcf3451
HOMEPAGE=	http://wiki.solid-run.com/doku.php?id=products:imx6:software:development:u-boot

PKG_ARCH-data=	*
# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		devel/arm-none-eabi/gcc-linaro

USE_GMAKE=		Yes
MAKE_ENV+=		CROSS_COMPILE="arm-none-eabi-" KBUILD_VERBOSE=1

BOARDS=\
	mx6_cubox-i

FILES=\
	SPL \
	u-boot.img

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_config && \
	    env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD}
	-cd ${WRKSRC}/build/${BOARD} && \
	    cp ${FILES} ${PREFIX}/share/u-boot/${BOARD}/
.endfor

.include <bsd.port.mk>
