# $OpenBSD$

COMMENT =	kqueue-based inotify compatible library
DISTNAME =	libinotify-kqueue-20120419
PKGNAME =	libinotify-20120419
CATEGORIES =	devel

SHARED_LIBS +=	inotify			0.0 # 0.0

HOMEPAGE =	https://github.com/dmatveev/libinotify-kqueue

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =	http://devio.us/~bcallah/source/

CONFIGURE_STYLE =	gnu

TEST_TARGET =	test

.include <bsd.port.mk>
