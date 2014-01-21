# $OpenBSD $

COMMENT=	recursively merge two or more hashes, simply

MODULES=	cpan
DISTNAME=	Hash-Merge-Simple-0.051
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Clone	\
		devel/p5-Test-Most

BUILD_DEPENDS= ${RUN_DEPENDS}

.include <bsd.port.mk>
