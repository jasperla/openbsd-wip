# $OpenBSD: Makefile,v 1.58 2011/03/30 12:27:41 edd Exp $

COMMENT =	commandline tool for MediaTek MTK-based GPS devices

DISTNAME =	mtkbabel-0.8.2
CATEGORIES =	geo

HOMEPAGE =	http://mtkbabel.sourceforge.net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mtkbabel/}

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		perl
NO_BUILD =		Yes
NO_REGRESS =	Yes
PKG_ARCH =		*

RUN_DEPENDS =	devel/p5-Time-Format \
		comms/p5-Device-SerialPort

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mtkbabel/
	${INSTALL_DATA} ${WRKSRC}/{README,changelog,copyright,MtkExtensionsv1.xsd} ${PREFIX}/share/doc/mtkbabel/
	${INSTALL_SCRIPT} ${WRKSRC}/mtkbabel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} $(WRKSRC)/mtkbabel.1 $(PREFIX)/man/man1/mtkbabel.1

.include <bsd.port.mk>
