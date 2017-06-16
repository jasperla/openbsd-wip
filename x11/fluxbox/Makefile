# $OpenBSD: Makefile,v 1.83 2017/06/02 11:33:16 schwarze Exp $

COMMENT =	window manager based on the original Blackbox code
DISTNAME =	fluxbox-1.3.7.0.1.20170301
CATEGORIES =	x11

HOMEPAGE =	http://fluxbox.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Imlib2 X11 Xext Xft Xinerama Xpm Xrandr Xrender c fontconfig
WANTLIB += freetype fribidi iconv m z

MASTER_SITES =	https://devio.us/~bcallah/source/

COMPILER =	gcc

LIB_DEPENDS =	converters/libiconv \
		devel/fribidi \
		graphics/imlib2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
