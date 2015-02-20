# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

COMMENT =		utility to flash EMS 64 Mbit USB Game Boy cartridge

DISTNAME =		ems-flasher-0.03

CATEGORIES =		comms

HOMEPAGE =		https://lacklustre.net/projects/ems-flasher/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread usb-1.0

MASTER_SITES =		https://lacklustre.net/projects/ems-flasher/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		devel/libusb1

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ems-flasher ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/ems-flasher.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
