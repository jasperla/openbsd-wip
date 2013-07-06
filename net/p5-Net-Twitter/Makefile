# $OpenBSD$

COMMENT=	Perl interface to the Twitter API

DISTNAME=	Net-Twitter-4.00006
CATEGORIES=	net

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild

CONFIGURE_ARGS=--skipdeps

RUN_DEPENDS=	converters/p5-JSON \
		devel/p5-Data-Visitor \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Devel-StackTrace \
		devel/p5-Moose \
		devel/p5-MooseX-Aliases \
		devel/p5-MooseX-Role-Parameterized \
		devel/p5-Try-Tiny \
		devel/p5-namespace-autoclean \
		net/p5-Net-OAuth \
		security/p5-Crypt-SSLeay \
		security/p5-Digest-HMAC \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

REGRESS_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
