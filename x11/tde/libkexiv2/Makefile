# $OpenBSD$

COMMENT =		tde wrapper around exiv2

DISTNAME =		libkexiv2-${TDE_V}

SHARED_LIBS +=  kexiv2                    0.0 # 5.0

CATEGORIES =		x11 x11/tde graphics

WANTLIB += ICE SM X11 Xext exiv2 expat iconv intl kdecore m png
WANTLIB += stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=libraries/}

LIB_DEPENDS =		graphics/exiv2 \
			x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/libraries/libkexiv2

.include <bsd.port.mk>
