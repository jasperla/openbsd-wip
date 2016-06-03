# $OpenBSD$


COMMENT =		USB multiplex daemon

DISTNAME =		usbmuxd-1.0.7

SHARED_LIBS +=		usbmuxd		0.0 # 1.0

CATEGORIES =		sysutils

HOMEPAGE =		http://marcansoft.com/blog/iphonelinux/usbmuxd/

# GPLv2/3, library is LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c plist pthread usb-1.0

MASTER_SITES =		http://marcansoft.com/uploads/usbmuxd/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake
LIB_DEPENDS =		devel/libusb1 \
			devel/libplist,-main

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -pthread"

NO_TEST =		Yes

.include <bsd.port.mk>
