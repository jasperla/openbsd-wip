# $OpenBSD:
#
COMMENT =	very basic terminfo library
VERSION =	1.1.0
DISTNAME =	unibilium-${VERSION}

GH_ACCOUNT =	neovim
GH_PROJECT =	unibilium
GH_TAGNAME =	v${VERSION}

SHARED_LIBS +=  unibilium                 0.0 # 2.0

CATEGORIES =	devel

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

USE_GMAKE =		Yes

.include <bsd.port.mk>
