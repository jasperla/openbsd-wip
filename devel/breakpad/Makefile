# $OpenBSD$

COMMENT =	client-server crash reporting system from Google
DISTNAME =	breakpad-20170613
CATEGORIES =	devel

HOMEPAGE =	https://chromium.googlesource.com/breakpad/breakpad
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =	https://devio.us/~bcallah/source/

# Needs C++11
COMPILER =	gcc

CONFIGURE_STYLE =	gnu

# Tests are broken.
NO_TEST =	Yes

.include <bsd.port.mk>
