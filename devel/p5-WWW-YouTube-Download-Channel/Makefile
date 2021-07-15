# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Download all/every/some videos from youtube channels

MODULES=		cpan
VER=			0.09
DISTNAME=		WWW-YouTube-Download-Channel-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		HERNAN

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= textproc/p5-XML-XPath \
		devel/p5-WWW-YouTube-Download \
		devel/p5-Perl6-Form

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
