# $OpenBSD$
# $RedRiver: Makefile,v 1.3 2010/11/03 20:21:15 andrew Exp $

COMMENT=	Perl interface to the Transmission BitTorrent client RPC

DISTNAME=	Transmission-Client-0.0602
CATEGORIES=	net

MAINTAINER=	Andrew Fresh <andrew@afresh1.com>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan
CPAN_AUTHOR=    JHTHORSEN

CONFIGURE_ARGS=--skipdeps

RUN_DEPENDS=	converters/p5-JSON \
		devel/p5-DateTime \
		devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-Sub-Exporter \
		www/p5-libwww

.include <bsd.port.mk>
