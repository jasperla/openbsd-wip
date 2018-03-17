# $OpenBSD: Makefile,v 1.17 2018/01/04 06:20:51 bentley Exp $

COMMENT=	open-source electronics prototyping platform

V=		1.8.5
DISTNAME=	arduino-${V}
EXTRACT_SUFX =	.tar.xz
EPOCH=		0
CATEGORIES=	devel
HOMEPAGE=	https://www.arduino.cc/

MASTER_SITES =	https://github.com/arduino/Arduino/releases/download/${V}/
# Docs
MASTER_SITES0 =	https://downloads.arduino.cc/
# arduino-libraries
MASTER_SITES1 =	https://s3-us-west-2.amazonaws.com/openbsd-ports/
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} reference-1.6.6-3.zip:0
DISTFILES +=	arduino-libraries_20180312.tar.gz:1

# arduino core + libraries: LGPLv2.1
# frontend application: GPLv2 (not shipped yet)
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/avr/binutils \
		devel/avr/gcc \
		devel/avr/libc \
		devel/avrdude

BUILD_DEPENDS=	archivers/unzip

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}/Arduino-${V}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	@${SUBST_CMD} -m ${BINMODE} -c ${FILESDIR}/arduinoboot \
                ${PREFIX}/bin/arduinoboot
	@${SUBST_CMD} -m ${BINMODE} -c ${FILESDIR}/arduinoproject \
                ${PREFIX}/bin/arduinoproject
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@${SUBST_CMD} -m 444 -c ${FILESDIR}/Makefile \
                ${PREFIX}/share/examples/arduino/Makefile
	@${SUBST_CMD} -m 444 -c ${FILESDIR}/template.ino \
                ${PREFIX}/share/examples/arduino/template.ino
	@chmod	a+r ${PREFIX}/share/examples/arduino/*
	@cp -r	${WRKSRC}/build/shared/examples/* \
		${PREFIX}/share/examples/arduino
	@cp -r	${WRKSRC}/hardware/arduino/* ${WRKSRC}/libraries \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/license.txt ${WRKSRC}/README.md \
		${PREFIX}/share/doc/arduino
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arduino/reference
	@cp -r	${WRKDIR}/bin ${WRKDIR}/code.jquery.com \
		${WRKDIR}/www.arduino.cc ${PREFIX}/share/doc/arduino/reference
	@cp -r 	${WRKDIR}/arduino-libraries/* \
		${PREFIX}/share/arduino/libraries
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	@find ${PREFIX} -type f -name \*.orig -exec rm '{}' \;
	@${INSTALL_DATA_DIR} ${PREFIX}/share/arduino/mk
	@${INSTALL_DATA} -c ${FILESDIR}/alibs.mk ${PREFIX}/share/arduino/mk/

.include <bsd.port.mk>
