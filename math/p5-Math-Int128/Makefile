# $OpenBSD$

ONLY_FOR_ARCHS = aarch64 amd64 alpha mips64 mips64el sparc64

COMMENT =	manipulate 128 bits integers in Perl

DISTNAME =	Math-Int128-0.22

CATEGORIES =	math

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

RUN_DEPENDS =	math/p5-Math-Int64

.include <bsd.port.mk>
