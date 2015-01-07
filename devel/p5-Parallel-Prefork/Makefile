# $OpenBSD$

COMMENT=	simple prefork server framework

MODULES=	cpan
DISTNAME=	Parallel-Prefork-0.17
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes


BUILD_DEPENDS=	devel/p5-Test-Requires

RUN_DEPENDS=	devel/p5-Class-Accessor-Lite \
		devel/p5-List-MoreUtils \
		sysutils/p5-Proc-Wait3 \
		devel/p5-Scope-Guard \
		devel/p5-Signal-Mask

TEST_DEPENDS=	devel/p5-Test-Requires

.include <bsd.port.mk>
