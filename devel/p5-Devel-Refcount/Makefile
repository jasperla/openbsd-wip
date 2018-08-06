# $OpenBSD$

COMMENT =	obtain the REFCNT value of a referent

DISTNAME =	Devel-Refcount-0.10

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Module-Build \
		devel/p5-Test-Fatal

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
