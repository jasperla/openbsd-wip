# $OpenBSD $

COMMENT=	modules that serialize data structures	

MODULES=	cpan
DISTNAME=	Data-Serializer-0.60
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Config-General \
		devel/p5-YAML \
		devel/p5-YAML-Syck \
		converters/p5-JSON-XS \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-CBC \
		textproc/p5-XML-Dumper \
		textproc/p5-XML-Simple \
		www/p5-PHP-Serialization

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
