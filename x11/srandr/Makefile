# $OpenBSD$

COMMENT =		daemon that executes a command when xorg output changes
DISTNAME =		srandrd-0.4

CATEGORIES =		x11

HOMEPAGE =		https://bitbucket.org/portix/srandrd

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xrandr c

MASTER_SITES =		${HOMEPAGE}/downloads/

MAKE_ENV +=		MANPREFIX="${PREFIX}/man"
MAKE_ENV +=		LDFLAGS="${LDFLAGS}"

# XXX Makefile prepends DESTDIR to PREFIX
FAKE_FLAGS =		PREFIX=${PREFIX}

CFLAGS =		-I${X11BASE}/include
LDFLAGS =		-L${X11BASE}/lib

.include <bsd.port.mk>
