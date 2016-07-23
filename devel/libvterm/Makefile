# $OpenBSD:
#
COMMENT =	VT220/xterm/ECMA-48 terminal emulator library
VERSION =	0.1
DISTNAME =	libvterm-${VERSION}

GH_ACCOUNT =	neovim
GH_PROJECT =	libvterm
GH_COMMIT =	a9c7c6fd20fa35e0ad3e0e98901ca12dfca9c25c

SHARED_LIBS +=  vterm                     0.0 # 0.0

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu

.include <bsd.port.mk>
