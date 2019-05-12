# $OpenBSD: Makefile,v 1.23 2019/02/09 17:55:27 abieber Exp $

COMMENT =	correct and clean up HTML and XML

V =		5.6.0
DISTNAME =	tidy-html5-${V}
PKGNAME =	tidy-${V}
EPOCH=		0

SHARED_LIBS +=  tidy                      2.0 # 5.6

CATEGORIES =	www devel
HOMEPAGE =	https://www.html-tidy.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD-like, badly worded, defined in include/tidy.h
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://deftly.net/dist/

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man/man1

post-extract:
	perl -pi -e 's,\xef\xbb\xbf,,' ${WRKSRC}/src/language*.h

.include <bsd.port.mk>
