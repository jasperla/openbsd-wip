# $OpenBSD$

COMMENT =		reads/writes lzma files/buffers

DISTNAME =		IO-Compress-Lzma-2.061

CATEGORIES =		archivers

MAINTAINER =		Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/p5-Compress-Raw-Lzma
RUN_DEPENDS +=		archivers/p5-IO-Compress # until base is updated to 2.061
TEST_DEPENDS =		archivers/p7zip

.include <bsd.port.mk>
