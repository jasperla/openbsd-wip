# $OpenBSD$

COMMENT =		reads/writes lzo files/buffers

DISTNAME =		IO-Compress-Lzop-2.061

CATEGORIES =		archivers

MAINTAINER =		Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/p5-Compress-LZO
RUN_DEPENDS +=		archivers/p5-IO-Compress # until base is updated to 2.061

.include <bsd.port.mk>
