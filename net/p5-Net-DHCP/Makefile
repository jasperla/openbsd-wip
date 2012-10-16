# $OpenBSD: Makefile,v 1.1.1.1 2011/03/11 19:56:39 sthen Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.692
CATEGORIES =	net
# CPAN_AUTHOR =	SHADINGER
CPAN_AUTHOR =	DJZORT

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =	cpan

BUILD_DEPENDS =		devel/p5-Test-Warn

CONFIGURE_STYLE =	modbuild

REGRESS_FLAGS =		TEST_AUTHOR=true
REGRESS_DEPENDS =	devel/p5-Test-Perl-Critic \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-CheckManifest

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
