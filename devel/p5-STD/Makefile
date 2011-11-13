# $OpenBSD$

COMMENT =		Perl 6 grammar

MODULES =		cpan

DISTNAME =		STD-20101111
CATEGORIES =		devel perl6

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		SOREAR

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-File-ShareDir \
			devel/p5-Moose \
			devel/p5-YAML-XS

.include <bsd.port.mk>
