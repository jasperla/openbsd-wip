# $OpenBSD$

VERSION =		2.4.0
COMMENT-main =		K Desktop Environment, photo management utility
COMMENT-kipi =		collection of image plugins for KDE
COMMENT-geomap =	KIPI interface library for Marble
COMMENT-vkontakte =	KIPI interface library for VKontakte.Ru
DISTNAME =		digikam-${VERSION}
PKGNAME =		digikam4-${VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-kipi =		kipi-plugins4-${VERSION}
PKGNAME-geomap =	libkgeomap-${VERSION}
PKGNAME-vkontakte =	libkvkontakte-1.0.0

SHARED_LIBS =	kipiplugins		0.0
SHARED_LIBS +=  digikamcore		0.0 # 2.0
SHARED_LIBS +=  digikamdatabase		0.0 # 2.0
SHARED_LIBS +=  kface			0.0 # 1.0
SHARED_LIBS +=  kgeomap			0.0 # 1.0
SHARED_LIBS +=  kvkontakte		0.0 # 1.0
SHARED_LIBS +=  mediawiki		0.0 # 1.0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=digikam/${VERSION}/}

MULTI_PACKAGES =	-main -kipi -geomap -vkontakte

MODULES =		devel/gettext

# Do not use WANTLIB due to gettext module automatically adding to it

WANTLIB-common =  ${MODQT_WANTLIB} ${MODKDE_WANTLIB}
WANTLIB-common += c m stdc++
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-common += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-common += kdecore kdeui kio kparts nepomuk nepomukutils soprano

WANTLIB-main =  ${WANTLIB-common}
WANTLIB-main += ICE SM X11 Xext pthread z
WANTLIB-main += lib/qt4/Qt3Support lib/qt4/QtSql lib/qt4/QtWebKit
WANTLIB-main += kabc kcmutils kdcraw kde3support kemoticons kexiv2
WANTLIB-main += kfile khtml kidletime kipi kjs
WANTLIB-main += knotifyconfig kprintutils kresources kutils phonon solid
WANTLIB-main += sopranoclient
WANTLIB-main += opencv_calib3d opencv_contrib opencv_core
WANTLIB-main += opencv_features2d opencv_flann opencv_gpu
WANTLIB-main += opencv_highgui opencv_imgproc opencv_legacy opencv_ml
WANTLIB-main += opencv_objdetect opencv_video
WANTLIB-main += glib-2.0 gphoto2 gphoto2_port jasper jpeg lcms lqr-1
WANTLIB-main += png tiff usb
WANTLIB-main += kdewebkit marblewidget qjson

WANTLIB-kipi =  ${WANTLIB-common} ${MODGETTEXT_WANTLIB}
WANTLIB-kipi += ICE SM X11 Xext expat pthread
WANTLIB-kipi += GL GLU Xrandr
WANTLIB-kipi += lib/qt4/QtOpenGL lib/qt4/QtXmlPatterns qca
WANTLIB-kipi += kcalcore kdcraw kexiv2 khtml kjs kipi
WANTLIB-kipi += ksane phonon
WANTLIB-kipi += gdk_pixbuf-2.0 gmodule-2.0 gobject-2.0
WANTLIB-kipi += gthread-2.0
WANTLIB-kipi += opencv_calib3d opencv_contrib opencv_core
WANTLIB-kipi += opencv_features2d opencv_flann opencv_gpu
WANTLIB-kipi += opencv_highgui opencv_imgproc opencv_legacy opencv_ml
WANTLIB-kipi += opencv_objdetect opencv_video
WANTLIB-kipi += glib-2.0 gpod iconv intl jpeg qjson xml2 xslt
WANTLIB-kipi += exslt

WANTLIB-geomap =  ${WANTLIB-common}
WANTLIB-geomap += pthread
WANTLIB-geomap += kexiv2 khtml kjs phonon

WANTLIB-vkontakte =  ${WANTLIB-common}
#WANTLIB-vkontakte += lib/qt4/QtWebKit
#WANTLIB-vkontakte += kdewebkit
#WANTLIB-vkontakte += qjson

# Define dependencies manually per subpackage
# TODO: fix kde48.port.mk to allow such grained tuning
MODKDE4_USE =

BUILD_DEPENDS =		devel/boost \
			devel/doxygen \
			databases/mysql,-server \
			misc/shared-desktop-ontologies

RUN_DEPENDS-main =	devel/desktop-file-utils \
			databases/mysql,-server \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-kipi =	${MODGETTEXT_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-geomap =	x11/gtk+2,-guic

RUN_DEPENDS-vkontakte =	x11/kde48/runtime

LIBS_DEPENDS-common =	${MODQT_LIB_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS-common} \
			${BUILD_PKGPATH},-geomap \
			${BUILD_PKGPATH},-kipi \
			${BUILD_PKGPATH},-vkontakte \
			devel/glib2 \
			graphics/jasper \
			graphics/lcms \
			graphics/libgphoto2 \
			graphics/liblqr \
			graphics/opencv \
			graphics/png \
			graphics/tiff \
			x11/kde48/libkdcraw \
			x11/kde48/libkexiv2 \
			x11/kde48/libkipi \
			x11/kde48/libs \
			x11/kde48/marble \
			x11/kde48/pimlibs \

LIB_DEPENDS-kipi =	${LIB_DEPENDS-common} \
			${BUILD_PKGPATH},-geomap \
			${BUILD_PKGPATH},-kipi \
			${BUILD_PKGPATH},-vkontakte \
			${MODGETTEXT_LIB_DEPENDS} \
			audio/libgpod \
			devel/glib2 \
			devel/qjson \
			graphics/gdk-pixbuf2 \
			graphics/lensfun \
			graphics/opencv \
			graphics/png \
			graphics/tiff \
			multimedia/phonon \
			security/qca2 \
			x11/kde48/libkdcraw \
			x11/kde48/libkexiv2 \
			x11/kde48/libkipi \
			x11/kde48/libksane \
			x11/kde48/libs \
			x11/kde48/pimlibs \

LIB_DEPENDS-geomap =	${LIB_DEPENDS-common} \
			${BUILD_PKGPATH},-geomap \
			x11/kde48/libkexiv2 \
			x11/kde48/libs \
			x11/kde48/marble

LIB_DEPENDS-vkontakte = ${LIB_DEPENDS-common} \
			devel/qjson \
			x11/kde48/libs

CONFIGURE_ARGS =	-DENABLE_INTERNALMYSQL:Bool=No

FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-DENABLE_ADVANCEDDEBUGMSG:Bool=Yes
.endif

.include <bsd.port.mk>
