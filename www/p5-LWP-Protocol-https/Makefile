# $OpenBSD:$

COMMENT =	adds support for https to p5-libwww

DISTNAME =	LWP-Protocol-https-6.03
CATEGORIES =	www net security
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan

RUN_DEPENDS =	net/p5-Net-HTTP>=6 \
		security/p5-Mozilla-CA>=20110101 \
		security/p5-IO-Socket-SSL>=1.54 \
		www/p5-libwww>=6.04
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
