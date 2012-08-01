# $OpenBSD$

COMMENT =		digital image tde application

DISTNAME =		digikam-${TDE_V}

SHARED_LIBS +=  digikam                   4.0 # 0.0

CATEGORIES =		x11 x11/tde graphics

WANTLIB += DCOP ICE SM X11 Xext c exif exiv2 expat gphoto2 gphoto2_port
WANTLIB += jasper jpeg kabc kdcraw kdecore kdefx kdeprint kdeui
WANTLIB += kexiv2 khtml kio kipi kparts ktexteditor kutils lcms
WANTLIB += ltdl m png pthread sqlite3 stdc++ tiff tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		x11/tde/libs \
			x11/tde/libkipi \
			x11/tde/libkexiv2 \
			x11/tde/libkdcraw \
			graphics/libgphoto2

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-included-sqlite3
CONFIGURE_ENV =		LIBS="-lm"

WRKDIST =		${WRKDIR}/applications/digikam

.include <bsd.port.mk>
