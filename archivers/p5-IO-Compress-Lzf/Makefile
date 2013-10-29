# $OpenBSD$

COMMENT =		reads/writes lzf files/buffers

DISTNAME =		IO-Compress-Lzf-2.061

CATEGORIES =		archivers

MAINTAINER =		Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/p5-Compress-LZF
RUN_DEPENDS +=		archivers/p5-IO-Compress # until base is updated to 2.061

.include <bsd.port.mk>
