# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		FUSE filesystem for accessing MTP

DISTNAME =		jmtpfs-0.4

CATEGORIES =		sysutils

HOMEPAGE =		http://research.jacquette.com/jmtpfs-exchanging-files-between-android-devices-and-linux/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m magic mtp pthread usb-1.0

MASTER_SITES =		http://research.jacquette.com/wp-content/uploads/2012/05/

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS =		devel/libmagic \
			devel/libmtp \
			devel/libusb1

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
