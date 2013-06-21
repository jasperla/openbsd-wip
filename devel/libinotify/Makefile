# $OpenBSD$

COMMENT =	kqueue-based inotify compatible library
DISTNAME =	libinotify-20110829
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	devel

SHARED_LIBS +=	inotify			0.0 # 0.0

HOMEPAGE =	https://github.com/dmatveev/libinotify-kqueue

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =	ftp://ftp.springdaemons.com/soft/

CONFIGURE_STYLE =	gnu

# Needed for 'make test'
USE_GMAKE =	Yes

# You must install before running 'make test'
pre-test:
	${SUBST_CMD} ${WRKSRC}/tests/Makefile

do-test:
	cd ${WRKSRC}/tests && gmake && ${WRKSRC}/tests/tests

.include <bsd.port.mk>
