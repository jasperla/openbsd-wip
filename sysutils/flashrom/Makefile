# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	flash-ROM programmer for BIOS etc

DISTNAME=	flashrom-0.9.7
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	sysutils

HOMEPAGE=	http://www.flashrom.org/

# GPLv2 (only, for most files)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ftdi pthread usb z

MASTER_SITES=	http://download.flashrom.org/releases/

RUN_DEPENDS=	sysutils/dmidecode
LIB_DEPENDS=	devel/libftdi
# static lib
BUILD_DEPENDS=	sysutils/pciutils

USE_GMAKE=	Yes
NO_TEST=	Yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
FAKE_FLAGS=	PREFIX="${PREFIX}" MANDIR="${PREFIX}/man"

.include <bsd.port.mk>
