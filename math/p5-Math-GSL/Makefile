# $OpenBSD$

COMMENT=	perl interface to gnu scientific library

MODULES=	cpan
DISTNAME=	Math-GSL-0.25
CATEGORIES=	math

MAINTAINER=	Wen Heping <wenheping@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		devel/p5-ExtUtils-PkgConfig
LIB_DEPENDS =		devel/gsl
REGRESS_DEPENDS =	devel/p5-Test-Class \
			devel/p5-Test-Most

WANTLIB =		gsl>=12

CONFIGURE_STYLE=	modbuild
MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
