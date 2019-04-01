# $OpenBSD$

V =		1.2.2
COMMENT =	implementation of POSIX bc with GNU extensions
DISTNAME =	bc-${V}
PKGNAME =	ebc-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	math

HOMEPAGE =	https://github.com/gavinhoward/bc
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://github.com/gavinhoward/bc/releases/download/${V}/

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CC="${CC}" CFLAGS="${CFLAGS}" MANDIR="${PREFIX}/man" EXECPREFIX="e"
CONFIGURE_SCRIPT =	configure.sh
# This flag makes it so we don't run tests that need GNU bc to generate.
CONFIGURE_ARGS = -G

USE_GMAKE =	No

FAKE_FLAGS =	DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
