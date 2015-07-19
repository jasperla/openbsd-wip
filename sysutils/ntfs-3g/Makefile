# $OpenBSD: Makefile,v 1.6 2015/05/22 11:31:18 ajacoutot Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2015.3.14
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.0	# .85
CATEGORIES =	sysutils

HOMEPAGE =	http://www.tuxera.com/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c uuid fuse

MASTER_SITES =	${HOMEPAGE}/opensource/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =		sysutils/e2fsprogs

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-mtab \
			--disable-ldconfig

.include <bsd.port.mk>
