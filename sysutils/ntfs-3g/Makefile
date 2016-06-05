# $OpenBSD: Makefile,v 1.8 2016/03/11 20:28:31 naddy Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2016.2.22
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.2	# .86
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
CONFIGURE_ARGS =	--disable-mtab \
			--enable-extras \
			--enable-mount-helper \
			--with-fuse=external \
			--disable-ldconfig

.include <bsd.port.mk>
