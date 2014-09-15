# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:51 espie Exp $

COMMENT =	create SOCKS v4/v5 client or server

DISTNAME =	IO-Socket-Socks-0.65

CATEGORIES =	net
CPAN_AUTHOR =	OLEG

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

MODCPAN_EXAMPLES =	Yes

TEST_ENV += SOCKS_SLOW_TESTS=1

.include <bsd.port.mk>
