# $OpenBSD $

COMMENT=	Asyncrhonous event-driven programming

MODULES=	cpan
DISTNAME=	IO-Async-0.61
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel

MAINTAINER =    Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Refcount \
		devel/p5-Test-Fatal \
		devel/p5-Test-Identity \
		devel/p5-Future

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
