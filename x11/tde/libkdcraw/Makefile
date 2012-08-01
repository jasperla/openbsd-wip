# $OpenBSD$

COMMENT =		grab raw data from digital cameras

DISTNAME =		libkdcraw-${TDE_V}

SHARED_LIBS +=  kdcraw                    3.0 # 4.3

CATEGORIES =		x11 x11/tde graphics devel

WANTLIB += ICE SM X11 Xext jpeg kdecore kdeui kio lcms m png stdc++
WANTLIB += tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=libraries/}

RUN_DEPENDS =		graphics/dcraw
LIB_DEPENDS =		graphics/lcms \
			x11/tde/libs

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-openmp
CONFIGURE_ENV =		LIBS="-lm"

WRKDIST =		${WRKDIR}/libraries/libkdcraw

.include <bsd.port.mk>
