# $OpenBSD:$

COMMENT =	Perl HTTP connection client

DISTNAME =	Net-HTTP-6.03
CATEGORIES =	net
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =	cpan

RUN_DEPENDS=	p5-IO-Socket-SSL-*|p5-Crypt-SSLeay-*:security/p5-IO-Socket-SSL
BUILD_DEPENDS=	${RUN_DEPENDS}

.if LIVE_TEST
CONFIGURE_ARGS +=--live-tests
.endif

.include <bsd.port.mk>
