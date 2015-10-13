# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"OpenStack Object Storage API (swift)"
DISTNAME=		Net-OpenStack-Swift-0.04
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test-MockObject \
		security/p5-IO-Socket-SSL \
		www/p5-URI \
		devel/p5-Mouse \
		converters/p5-JSON \
		devel/p5-Data-Validator \
		devel/p5-Log-Minimal \
		devel/p5-Furl \
		devel/p5-Data-Section-Simple

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MA/MASAKYST/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
