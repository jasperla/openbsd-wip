# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME=	Test-Warn-0.23
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Sub-Uplevel>=0.12 \
		devel/p5-Tree-DAG_Node>=1.02

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
