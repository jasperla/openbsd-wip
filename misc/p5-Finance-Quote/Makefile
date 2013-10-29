# $OpenBSD: Makefile,v 1.20 2013/03/11 11:23:57 espie Exp $

COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-Quote-1.18
CATEGORIES=	misc

HOMEPAGE=	http://finance-quote.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-TableExtract \
		www/p5-HTML-Tree \
		www/p5-libwww

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# uncomment for online checks, too many failures because of site changes, lot of downloads.
#TEST_FLAGS =	ONLINE_TEST=true

.include <bsd.port.mk>
