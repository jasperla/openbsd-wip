# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	flash-ROM programmer for BIOS etc

DISTNAME=	flashrom-0.9.8
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	sysutils

HOMEPAGE=	http://www.flashrom.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ftdi pthread usb z

MASTER_SITES=	http://download.flashrom.org/releases/

BUILD_DEPENDS=	sysutils/pciutils # static library
RUN_DEPENDS=	sysutils/dmidecode
LIB_DEPENDS=	devel/libusb-compat \
		devel/libftdi
FAKE_FLAGS=	PREFIX="${TRUEPREFIX}" MANDIR="${TRUEPREFIX}/man"

USE_GMAKE=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
