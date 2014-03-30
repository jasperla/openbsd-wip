# $OpenBSD$

COMMENT =	modules that serialize data structures	

MODULES =	cpan
DISTNAME =	Data-Serializer-0.60
CATEGORIES =	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

FAKE_FLAGS =	PREFIX=""

RUN_DEPENDS =	devel/p5-Bencode \
		devel/p5-Compress-PPMd \
		devel/p5-Config-General \
		devel/p5-Convert-Bencode \
		devel/p5-Convert-Bencode_XS \
		devel/p5-Data-Taxi \
		devel/p5-YAML \
		devel/p5-YAML-Syck \
		converters/p5-JSON-XS \
		converters/p5-JSON \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-CBC \
		textproc/p5-XML-Dumper \
		textproc/p5-XML-Simple \
		www/p5-PHP-Serialization

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
