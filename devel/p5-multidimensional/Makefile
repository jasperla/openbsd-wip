# $OpenBSD$

COMMENT =	disables multidimensional array emulation

DISTNAME =	multidimensional-0.014

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-B-Hooks-OP-Check

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check>=0.19

CPAN_AUTHOR =	ILMARI

.include <bsd.port.mk>
