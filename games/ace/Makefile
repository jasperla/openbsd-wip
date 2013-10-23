# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

COMMENT =		solitaire games

DISTNAME =		ace-1.4

SHARED_LIBS +=  cards                     0.0 # 1.0

CATEGORIES =		games

HOMEPAGE =		http://www.delorie.com/store/ace/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c m png xcb z

MASTER_SITES =		http://www.delorie.com/store/ace/

LIB_DEPENDS =		graphics/png

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
