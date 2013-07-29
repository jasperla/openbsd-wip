# $OpenBSD$

COMMENT =		reads/writes bzip2 files/buffers

DISTNAME =		Bundle-IO-Compress-Bzip2-2.061
PKGNAME  =		p5-IO-Compress-Bzip2-2.061

CATEGORIES =		archivers

MAINTAINER =		Todd T. Fries <todd@OpenBSD.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/p5-Compress-Raw-Bzip2
RUN_DEPENDS +=		archivers/p5-IO-Compress # until base is updated to 2.061

.include <bsd.port.mk>
