# $OpenBSD$

V =		1.2.0
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
CONFIGURE_ENV =		CC="${CC}" CFLAGS="${CFLAGS}" MANDIR="${PREFIX}/man"
CONFIGURE_SCRIPT =	configure.sh

USE_GMAKE =	Yes

FAKE_FLAGS =	DESTDIR="${DESTDIR}"

# Tests require GNU bc + lots of patching
NO_TEST =	Yes

.include <bsd.port.mk>
