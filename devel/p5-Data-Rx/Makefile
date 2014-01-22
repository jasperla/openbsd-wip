# $OpenBSD $

COMMENT=	Rx schema system

MODULES=	cpan
DISTNAME=	Data-Rx-0.200005
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel

MAINTAINER =    Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Try-Tiny \
		devel/p5-File-Find-Rule \
		devel/p5-Number-Tolerant

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
