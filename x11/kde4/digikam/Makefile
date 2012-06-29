# $OpenBSD$

COMMENT-face =		K Desktop Environment, Qt/C++ wrapper around LibFace
COMMENT-geomap =	K Desktop Environment, KIPI interface library for Marble
COMMENT-kipi =		K Desktop Environment, image plugins infrastructure
COMMENT-main =		K Desktop Environment, photo management utility
COMMENT-mediawiki =	K Desktop Environment, KIPI interface for MediaWiki
COMMENT-vkontakte =	K Desktop Environment, KIPI interface for VKontakte.Ru

VERSION =		2.6.0
DISTNAME =		digikam-${VERSION}

PKGNAME =		digikam4-${VERSION}
PKGNAME-face =		libkface-2.0.0
PKGNAME-geomap =	libkgeomap-${VERSION}
PKGNAME-kipi =		kipi-plugins4-${VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-mediawiki =	libmediawiki-1.0.0
PKGNAME-vkontakte =	libkvkontakte-1.0.0

EXTRACT_SUFX ?=		.tar.bz2

SHARED_LIBS =	kipiplugins		0.0
SHARED_LIBS +=  digikamcore		0.0 # 2.0
SHARED_LIBS +=  digikamdatabase		0.0 # 2.0
SHARED_LIBS +=  kface			0.0 # 1.0
SHARED_LIBS +=  kgeomap			0.0 # 1.0
SHARED_LIBS +=  kvkontakte		0.0 # 1.0
SHARED_LIBS +=  mediawiki		0.0 # 1.0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=digikam/${VERSION}/}

MULTI_PACKAGES =	-main -face -geomap -kipi -mediawiki -vkontakte

MODULES =		devel/gettext

# Do not use WANTLIB due to gettext module automatically adding to it

WANTLIB-common =  ${MODQT_WANTLIB} ${MODKDE_WANTLIB}
WANTLIB-common += c m stdc++
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB-common +=
WANTLIB-common += kdecore kdeui

WANTLIB-face =  ${WANTLIB-common}
WANTLIB-face += opencv_calib3d opencv_contrib opencv_core
WANTLIB-face += opencv_features2d opencv_flann opencv_gpu
WANTLIB-face += opencv_highgui opencv_imgproc opencv_legacy opencv_ml
WANTLIB-face += opencv_objdetect opencv_video

WANTLIB-geomap =  ${WANTLIB-common}
WANTLIB-geomap += pthread
WANTLIB-geomap += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-geomap += kexiv2 khtml kio kjs kparts nepomuk nepomukutils phonon soprano
WANTLIB-geomap += marblewidget

WANTLIB-kipi =  ${WANTLIB-common} ${MODGETTEXT_WANTLIB}
WANTLIB-kipi += GL GLU ICE SM X11 Xext Xrandr expat pthread z
WANTLIB-kipi += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtXmlPatterns qca2
WANTLIB-kipi += lib/qt4/QtXml
WANTLIB-kipi += kcalcore kdcraw kexiv2 khtml kio kjs kipi kparts
WANTLIB-kipi += ksane nepomuk nepomukutils phonon soprano threadweaver
WANTLIB-kipi += gdk_pixbuf-2.0 gmodule-2.0 gobject-2.0
WANTLIB-kipi += gthread-2.0
WANTLIB-kipi += opencv_calib3d opencv_contrib opencv_core
WANTLIB-kipi += opencv_features2d opencv_flann opencv_gpu
WANTLIB-kipi += opencv_highgui opencv_imgproc opencv_legacy opencv_ml
WANTLIB-kipi += opencv_objdetect opencv_video
WANTLIB-kipi += exslt glib-2.0 gpod iconv intl jpeg png qjson tiff xml2 xslt
WANTLIB-kipi += kfile kgeomap kvkontakte

WANTLIB-main =  ${WANTLIB-common}
WANTLIB-main += ICE SM X11 Xext pthread z
WANTLIB-main += lib/qt4/Qt3Support lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB-main += lib/qt4/QtXml
WANTLIB-main += kabc kcmutils kdcraw kde3support kemoticons kexiv2
WANTLIB-main += kfile khtml kidletime kio kipi kjs knotifyconfig
WANTLIB-main += kparts kprintutils kresources kutils nepomuk
WANTLIB-main += nepomukutils phonon solid soprano sopranoclient
WANTLIB-main += glib-2.0 gphoto2 gphoto2_port jasper jpeg lcms lqr-1
WANTLIB-main += png tiff usb
WANTLIB-main += kface kgeomap

WANTLIB-mediawiki =  ${WANTLIB-common}
WANTLIB-mediawiki += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-mediawiki += kio

WANTLIB-vkontakte =  ${WANTLIB-common}
WANTLIB-vkontakte += lib/qt4/QtNetwork lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB-vkontakte += kdewebkit kio kparts nepomuk nepomukutils soprano
WANTLIB-vkontakte += qjson

# Define dependencies manually per subpackage
# TODO: fix kde4.port.mk to allow such grained tuning
MODKDE4_USE =

BUILD_DEPENDS =		devel/boost \
			devel/doxygen \
			databases/mysql,-server \
			misc/shared-desktop-ontologies

RUN_DEPENDS-face =

RUN_DEPENDS-geomap =	x11/gtk+2,-guic

RUN_DEPENDS-kipi =	${MODGETTEXT_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-main =	devel/desktop-file-utils \
			databases/mysql,-server \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-vkontakte =	x11/kde4/runtime

LIBS_DEPENDS-common =	${MODQT_LIB_DEPENDS}

LIB_DEPENDS-face =	${LIB_DEPENDS-common} \
			graphics/opencv \
			x11/kde4/libs

LIB_DEPENDS-geomap =	${LIB_DEPENDS-common} \
			x11/kde4/libkexiv2 \
			x11/kde4/libs \
			x11/kde4/marble

LIB_DEPENDS-kipi =	${LIB_DEPENDS-common} \
			${BUILD_PKGPATH},-geomap \
			${BUILD_PKGPATH},-mediawiki \
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
			x11/kde4/libkdcraw \
			x11/kde4/libkexiv2 \
			x11/kde4/libkipi \
			x11/kde4/libksane \
			x11/kde4/libs \
			x11/kde4/pimlibs \

LIB_DEPENDS-main =	${LIB_DEPENDS-common} \
			${BUILD_PKGPATH},-face \
			${BUILD_PKGPATH},-geomap \
			devel/glib2 \
			graphics/jasper \
			graphics/lcms \
			graphics/libgphoto2 \
			graphics/liblqr \
			graphics/png \
			graphics/tiff \
			x11/kde4/libkdcraw \
			x11/kde4/libkexiv2 \
			x11/kde4/libkipi \
			x11/kde4/libs \
			x11/kde4/marble \
			x11/kde4/pimlibs \

LIB_DEPENDS-mediawiki =	${LIB_DEPENDS-common} \
			x11/kde4/libs

LIB_DEPENDS-vkontakte = ${LIB_DEPENDS-common} \
			devel/qjson \
			x11/kde4/libs

CONFIGURE_ARGS =	-DENABLE_INTERNALMYSQL:Bool=No \
			-DWITH_OpenMP:Bool=No

FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-DENABLE_ADVANCEDDEBUGMSG:Bool=Yes
.endif

.include <bsd.port.mk>
