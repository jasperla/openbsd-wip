# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	flash-ROM programmer for BIOS etc

V=          0.9.6.1
DISTNAME=	flashrom-${V}
EXTRACT_SUFX=	.tar.bz2

#SHARED_LIBS=	

CATEGORIES=	sysutils

HOMEPAGE=	http://www.flashrom.org

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c usb z

MASTER_SITES =          http://download.flashrom.org/releases/

RUN_DEPENDS=	sysutils/dmidecode
LIB_DEPENDS=	sysutils/pciutils \
				devel/libftdi

USE_GMAKE=	Yes
NO_TEST=	Yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
#MAKE_FLAGS=	SVNVERSION=1060
FAKE_FLAGS=	PREFIX="${PREFIX}" MANDIR="${PREFIX}/man"

.include <bsd.port.mk>
