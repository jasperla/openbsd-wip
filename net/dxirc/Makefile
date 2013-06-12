# $OpenBSD$

COMMENT =	simple yet capable cross-platform IRC client
DISTNAME =	dxirc-1.10.0
CATEGORIES =	net x11

HOMEPAGE =	http://www.dxirc.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FOX-1.6 GL GLU X11 Xcursor Xext Xfixes Xft Xrandr Xrender
WANTLIB += bz2 c crypto freetype jpeg m png pthread ssl stdc++
WANTLIB += tiff z

MASTER_SITES =	https://dxirc.googlecode.com/files/

MODULES +=	devel/gettext

LIB_DEPENDS =	devel/fox

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-lua
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

.include <bsd.port.mk>
