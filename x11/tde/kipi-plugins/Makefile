# $OpenBSD$

COMMENT-main =		tde image plugins
COMMENT-cal =		tde image calendar plugin

MULTI_PACKAGES =	-main -cal

V =			${TDE_V}
DISTNAME =		kipi-plugins-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-cal =		kipi-kcal-plugin-${V}

SHARED_LIBS +=  kipiplugins               0.0 # 0.1

CATEGORIES =		x11 x11/tde graphics

WANTLIB += ICE SM X11 Xext ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += kdecore kdeprint kdeui kio kipi m pcre
WANTLIB += png sqlite3 stdc++ tqt xcb xml2 z
WANTLIB-main += GL Xrandr Xrender c exif exiv2 expat exslt gcrypt gpg-error
WANTLIB-main += gphoto2 gphoto2_port gpod jpeg kdcraw kdefx kexiv2
WANTLIB-main += khtml kparts kwalletclient lcms ltdl plist pthread
WANTLIB-main += tiff xslt ${WANTLIB}
WANTLIB-cal += kcal kipiplugins gpod plist ${WANTLIB}

MASTER_SITES =		${MASTER_SITE_TDE:=libraries/}

MODULES =		devel/gettext \
			x11/tde
#BUILD_DEPENDS =	???
RUN_DEPENDS =		graphics/ImageMagick
LIB_DEPENDS =		x11/tde/libs \
			x11/tde/libkipi
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/tde/libkexiv2 \
			x11/tde/libkdcraw \
			graphics/libgphoto2 \
			audio/libgpod
LIB_DEPENDS-cal =	${LIB_DEPENDS} \
			x11/tde/pim \
			x11/tde/kipi-plugins,-main
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	autoconf
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/kde"

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/libraries/kipi-plugins
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

post-install:
.for l in de en es et it nl pt_BR sv
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.endfor

.include <bsd.port.mk>
