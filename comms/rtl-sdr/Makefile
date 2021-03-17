# $OpenBSD: Makefile,v 1.5 2017/07/05 10:22:05 sthen Exp $

COMMENT=	software to turn RTL2832U into an SDR

GH_ACCOUNT=	osmocom
GH_PROJECT=	rtl-sdr
GH_TAGNAME=	0.6.0
EPOCH=		0

SHARED_LIBS=	rtlsdr 1.0

CATEGORIES=	comms

HOMEPAGE=	http://sdr.osmocom.org/trac/wiki/rtl-sdr

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread usb-1.0

MODULES=	devel/cmake
LIB_DEPENDS=	devel/libusb1

NO_TEST=	Yes

# rtl_tcp, rtl_adsb and rtl_fm require asynchronous mode which is
# not currently working. additionally, rtl_adsb and rtl_fm have mutex
# issues (unlocking already-unlocked mutex) [XXX mutex issue
# unchecked since updating XXX] - other programs have been
# patched to force synchronous mode.
#
# update DESCR if fixing these.
post-install:
	cd ${PREFIX}/bin && rm rtl_adsb rtl_tcp rtl_fm

.include <bsd.port.mk>
