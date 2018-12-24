# $OpenBSD: Makefile,v 1.00 2018/12/06 15:00:06 ecb Exp $

COMMENT = 		multilingual text processing library - library
V = 1.8.0
DISTNAME =		m17n-lib-${V}

SHARED_LIBS +=  m17n-core                 4.2
SHARED_LIBS +=  m17n-flt                  4.2
SHARED_LIBS +=  m17n-gui                  4.2
SHARED_LIBS +=  m17n                      4.2

CATEGORIES = 		devel	

HOMEPAGE =		https://www.nongnu.org/m17n/

MAINTAINER =		Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xft Xrender Xt c expat fontconfig m pthread
WANTLIB += freetype xcb z

RUN_DEPENDS +=	misc/m17n-db=${V} \
                misc/libotf>=0.9

MASTER_SITES =		http://download.savannah.gnu.org/releases/m17n/

USE_GMAKE =		Yes
CONFIGURE_STYLE=        gnu

NO_TEST =		Yes

.include <bsd.port.mk>
