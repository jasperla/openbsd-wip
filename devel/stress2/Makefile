# $OpenBSD $

COMMENT =		FreeBSD kernel stress test suite
DISTNAME =		stress2

EXTRACT_SUFX = 		.tgz

CATEGORIES =		misc
HOMEPAGE =			http://people.freebsd.org/~pho/stress/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES            = ${HOMEPAGE}/src/

WANTLIB += c m stdc++

#DESTDIR=${WRKSRC}/lib
#PREFIX=		/usr/local/lib
#TRUEPREFIX=		$(PREFIX)
PREFIX=$(DESTDIR)/usr/local

.include <bsd.port.mk>
