# $OpenBSD$

COMMENT =	ANSI BASIC interpreter
DISTNAME =	bas-2.3
CATEGORIES =	lang

HOMEPAGE =	http://www.moria.de/~michael/bas/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses m

MASTER_SITES =	http://www.moria.de/~michael/bas/

MODULES =	devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
