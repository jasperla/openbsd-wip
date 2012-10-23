# $OpenBSD: Makefile,v 1.5 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT= 	creating and updating Bugzilla bugs

MODULES=	cpan
DISTNAME=	WWW-Bugzilla-1.5
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMaker>=1.08 \
		devel/p5-Params-Validate>0.88 \
		security/p5-Crypt-SSLeay>0.57 \
		www/p5-WWW-Mechanize>=1.3

BUILD_DEPENDS = ${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=makes network connections to bugzilla servers

.include <bsd.port.mk>
