# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=		find and use installed modules in a (sub)category

MODULES=		cpan
DISTNAME=		Module-Find-0.11
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
