# $OpenBSD: Makefile,v 1.21 2014/04/05 11:56:10 sthen Exp $

COMMENT=        standalone extensible Perl module installer

MODULES=	cpan
DISTNAME=	Module-Install-1.16
CATEGORIES=     devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-File-Remove>=1.42 \
		devel/p5-Module-ScanDeps>=1.13 \
		devel/p5-YAML-Tiny>=1.38
BUILD_DEPENDS +=	${RUN_DEPENDS}

# recommendations only...
#		archivers/p5-Archive-Zip>=1.37 \
#		converters/p5-JSON>=2.90 \
#		devel/p5-PAR-Dist>=0.29 \
#		www/p5-libwww>=6.05

TEST_DEPENDS +=	devel/p5-Test-Harness>=3.13 \
		devel/p5-Module-Install-AuthorTests

# No autoinstall from CPAN...
CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-test:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
