# $OpenBSD: Makefile,v 1.14 2014/10/30 21:44:30 edd Exp $

COMMENT=	open-source electronics prototyping platform

V=		1.6.3
PKGNAME=	arduino-${V}
DISTNAME=	arduino-${V}-src
EPOCH=		0
CATEGORIES=	devel
HOMEPAGE=	http://www.arduino.cc/

# Docs
MASTER_SITES0 =	http://arduino.cc/download.php?f=/
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		reference-1.6.0.zip:0

GH_ACCOUNT =           arduino
GH_PROJECT =           Arduino
GH_TAGNAME =           1.6.3

# arduino core + libraries: LGPLv2.1
# frontend application: GPLv2 (not shipped yet)
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/avr/binutils \
		devel/avr/gcc \
		devel/avr/libc \
		devel/avrdude

BUILD_DEPENDS=	archivers/unzip

NO_BUILD=       Yes
NO_TEST=     Yes
PKG_ARCH=       *
WRKDIST=	${WRKDIR}/Arduino-${V}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	@${SUBST_CMD} -c ${FILESDIR}/arduinoboot \
                ${PREFIX}/bin/arduinoboot
	@${SUBST_CMD} -c ${FILESDIR}/arduinoproject \
                ${PREFIX}/bin/arduinoproject
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@${SUBST_CMD} -c ${FILESDIR}/Makefile \
                ${PREFIX}/share/examples/arduino/Makefile
	@${SUBST_CMD} -c ${FILESDIR}/template.ino \
                ${PREFIX}/share/examples/arduino/template.ino
	@chmod	a+r ${PREFIX}/share/examples/arduino/*
	@cp -r	${WRKSRC}/build/shared/examples/* \
		${PREFIX}/share/examples/arduino
	@cp -r	${WRKSRC}/hardware/arduino/* ${WRKSRC}/libraries \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/license.txt ${WRKSRC}/README.md ${WRKDIR}/reference \
		${PREFIX}/share/doc/arduino
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	@find ${PREFIX} -type f -name \*.orig -exec rm '{}' \;
	@${INSTALL_DATA_DIR} ${PREFIX}/share/arduino/mk
	@${INSTALL_DATA} -c ${FILESDIR}/alibs.mk ${PREFIX}/share/arduino/mk/

.include <bsd.port.mk>
