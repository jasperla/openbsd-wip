#	$OpenBSD$

CATEGORIES=	sysutils
COMMENT=	U-Boot boot loader
DISTNAME=	u-boot-2016.03
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	ftp://ftp.denx.de/pub/u-boot/
HOMEPAGE=	http://www.denx.de/wiki/U-Boot

PKG_ARCH-data=	*
# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		devel/arm-none-eabi/gcc-linaro

USE_GMAKE=		Yes
MAKE_ENV+=		CROSS_COMPILE="arm-none-eabi-" KBUILD_VERBOSE=1

BOARDS=\
	omap3_beagle \
	omap4_panda \
	am335x_boneblack \
	am57xx_evm \
	A10-OLinuXino-Lime \
	A20-OLinuXino-Lime \
	A20-OLinuXino-Lime2 \
	A20-OLinuXino_MICRO \
	Bananapi \
	Bananapro \
	Cubieboard \
	Cubieboard2 \
	Cubietruck \
	Lamobo_R1 \
	Linksprite_pcDuino \
	Linksprite_pcDuino3 \
	Linksprite_pcDuino3_Nano \
	cm_fx6 \
	mx6cuboxi \
	nitrogen6q \
	novena \
	udoo \
	wandboard \
	clearfog

FILES=\
	MLO \
	SPL \
	u-boot.img \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-spl.kwb

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
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
