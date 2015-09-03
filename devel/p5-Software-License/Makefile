# $OpenBSD: Makefile,v 1.21 2014/04/05 11:56:10 sthen Exp $

COMMENT=       provide templated software licenses 

MODULES=	cpan
DISTNAME=	Software-License-0.103010
CATEGORIES=     devel

CPAN_AUTHOR =	RJBS

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS +=		devel/p5-Sub-Install \
			textproc/p5-Text-Template \
			textproc/p5-Data-Section
BUILD_DEPENDS +=	${RUN_DEPENDS}


TEST_DEPENDS +=		devel/p5-Try-Tiny


MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
