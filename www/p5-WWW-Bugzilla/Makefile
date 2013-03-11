# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:47 espie Exp $

COMMENT= 	creating and updating Bugzilla bugs

MODULES=	cpan
DISTNAME=	WWW-Bugzilla-1.5
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMaker>=1.08 \
		devel/p5-Params-Validate>0.88 \
		security/p5-Crypt-SSLeay>0.57 \
		www/p5-WWW-Mechanize>=1.3

BUILD_DEPENDS = ${RUN_DEPENDS}

pre-configure:
	mkdir -p ${WRKSRC}/lib
	cp -rp ${WRKSRC}/WWW ${WRKSRC}/lib

TEST_IS_INTERACTIVE=makes network connections to bugzilla servers

.include <bsd.port.mk>
