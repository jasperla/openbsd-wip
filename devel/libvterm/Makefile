# $OpenBSD:

COMMENT =	VT220/xterm/ECMA-48 terminal emulator library
# No releases, so use date and a git hash.
VERSION =	20170211
DISTNAME =	libvterm-${VERSION}

GH_ACCOUNT =	neovim
GH_PROJECT =	libvterm
GH_COMMIT =	224b8dcde1c9640c29a34aa60c0f0d56ad298449

SHARED_LIBS +=  vterm                     0.0 # 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

USE_GMAKE =		Yes

.include <bsd.port.mk>
