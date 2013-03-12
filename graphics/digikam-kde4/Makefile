# $OpenBSD$

COMMENT-face =		Qt/C++ wrapper around LibFace
COMMENT-geomap =	KIPI interface library for Marble
COMMENT-kipi =		KDE image plugins collection
COMMENT-main =		KDE photo management utility
COMMENT-mediawiki =	KIPI interface for MediaWiki
COMMENT-vkontakte =	KIPI interface for VK.com

CATEGORIES =		graphics
HOMEPAGE =		http://www.digikam.org/
VERSION =		3.0.0
DISTNAME =		digikam-${VERSION}

PKGNAME-face =		libkface-2.0.0
PKGNAME-geomap =	libkgeomap-${VERSION}
PKGNAME-kipi =		kipi-plugins-${VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-mediawiki =	libmediawiki-1.0.0
PKGNAME-vkontakte =	libkvkontakte-1.0.0

REVISION-main =		0
REVISION-face =		0
REVISION-geomap =	1
REVISION-kipi =		2
REVISION-mediawiki =	0
REVISION-vkontakte =	1

EXTRACT_SUFX =		.tar.bz2

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =		Yes

SHARED_LIBS =	kipiplugins		0.0
SHARED_LIBS +=  digikamcore		0.0 # 2.0
SHARED_LIBS +=  digikamdatabase		0.0 # 2.0
SHARED_LIBS +=  kface			0.0 # 1.0
SHARED_LIBS +=  kgeomap			0.0 # 1.0
SHARED_LIBS +=  kvkontakte		0.0 # 1.0
SHARED_LIBS +=  mediawiki		0.0 # 1.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

MULTI_PACKAGES =	-main -face -geomap -kipi -mediawiki -vkontakte

MODULES =		x11/kde4 multimedia/phonon devel/gettext

# Do not use WANTLIB due to gettext module automatically adding to it

WANTLIB-common =  ${MODQT4_WANTLIB} ${MODKDE4_WANTLIB}
WANTLIB-common += c m pthread stdc++
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB-common += ${KDE4LIB}/kdeui

WANTLIB-opencv =  opencv_calib3d opencv_contrib opencv_core
WANTLIB-opencv += opencv_features2d opencv_flann opencv_gpu
WANTLIB-opencv += opencv_highgui opencv_imgproc opencv_legacy opencv_ml
WANTLIB-opencv += opencv_nonfree  opencv_objdetect opencv_photo
WANTLIB-opencv += opencv_stitching  opencv_ts opencv_video opencv_videostab

WANTLIB-face =	${WANTLIB-common} ${WANTLIB-opencv}

WANTLIB-geomap =  ${WANTLIB-common} ${MODPHONON_WANTLIB}
WANTLIB-geomap += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-geomap += ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB-geomap += ${KDE4LIB}/marblewidget ${KDE4LIB}/nepomuk
WANTLIB-geomap += ${KDE4LIB}/nepomukutils
WANTLIB-geomap += soprano

WANTLIB-kipi =  ${WANTLIB-common} ${WANTLIB-opencv}
WANTLIB-kipi += ${MODGETTEXT_WANTLIB} ${MODPHONON_WANTLIB}
WANTLIB-kipi += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtXmlPatterns
WANTLIB-kipi += lib/qt4/QtTest lib/qt4/QtXml
WANTLIB-kipi += GL GLU ICE SM X11 Xext Xrandr expat exslt gdk_pixbuf-2.0
WANTLIB-kipi += glib-2.0 gmodule-2.0 gobject-2.0 gpod gthread-2.0 jpeg
WANTLIB-kipi += ${KDE4LIB}/kcalcore ${KDE4LIB}/kdcraw ${KDE4LIB}/kexiv2
WANTLIB-kipi += ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB-kipi += ${KDE4LIB}/kio ${KDE4LIB}/kipi ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB-kipi += ${KDE4LIB}/ksane
WANTLIB-kipi += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB-kipi += ${KDE4LIB}/threadweaver
WANTLIB-kipi += qjson kgeomap kvkontakte mediawiki png qca2 soprano
WANTLIB-kipi += tiff xml2 xslt z

WANTLIB-main =  ${WANTLIB-common} ${WANTLIB-opencv} ${MODPHONON_WANTLIB}
WANTLIB-main += ICE SM X11 Xext z
WANTLIB-main += lib/qt4/Qt3Support lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB-main += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB-main += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kdcraw
WANTLIB-main += ${KDE4LIB}/kemoticons ${KDE4LIB}/kexiv2
WANTLIB-main += ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB-main += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kipi ${KDE4LIB}/kjs
WANTLIB-main += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils
WANTLIB-main += ${KDE4LIB}/kresources ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk
WANTLIB-main += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB-main += ${KDE4LIB}/threadweaver
WANTLIB-main += exif glib-2.0 gphoto2 gphoto2_port jasper jpeg kface kgeomap
WANTLIB-main += lcms lensfun lqr-1 pgf png soprano tiff usb

WANTLIB-mediawiki =  ${WANTLIB-common}
WANTLIB-mediawiki += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-mediawiki += ${KDE4LIB}/kio

WANTLIB-vkontakte =  ${WANTLIB-common}
WANTLIB-vkontakte += lib/qt4/QtNetwork lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB-vkontakte += ${KDE4LIB}/kdewebkit ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB-vkontakte += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-vkontakte += qjson soprano

# Define dependencies manually per subpackage
# TODO: fix kde4.port.mk to allow such grained tuning

BUILD_DEPENDS =		devel/boost \
			devel/doxygen \
			databases/mysql,-server \
			misc/shared-desktop-ontologies

RUN_DEPENDS-face =	${MODKDE4_RUN_DEPENDS}

RUN_DEPENDS-geomap =

RUN_DEPENDS-kipi =	${MODGETTEXT_RUN_DEPENDS} \
			${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-main =	${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			databases/mysql,-server \
			misc/shared-desktop-ontologies \
			x11/gtk+2,-guic

RUN_DEPENDS-vkontakte =	${MODKDE4_RUN_DEPENDS}

LIBS_DEPENDS-common =	${MODQT4_LIB_DEPENDS} \
			${MODKDE4_LIB_DEPENDS}

LIB_DEPENDS-face =	${LIB_DEPENDS-common} \
			graphics/opencv>=2.4.1

LIB_DEPENDS-geomap =	${LIB_DEPENDS-common} \
			${MODPHONON_LIB_DEPENDS} \
			x11/kde4/marble

LIB_DEPENDS-kipi =	${LIB_DEPENDS-common} \
			${BASE_PKGPATH},-geomap \
			${BASE_PKGPATH},-mediawiki \
			${BASE_PKGPATH},-vkontakte \
			${MODGETTEXT_LIB_DEPENDS} \
			${MODPHONON_LIB_DEPENDS} \
			audio/libgpod \
			devel/glib2 \
			devel/qjson \
			graphics/gdk-pixbuf2 \
			graphics/opencv>=2.4.1 \
			graphics/png \
			graphics/tiff \
			security/qca2 \
			x11/kde4/libkdcraw \
			x11/kde4/libkexiv2 \
			x11/kde4/libkipi \
			x11/kde4/libksane \
			x11/kde4/pimlibs \

LIB_DEPENDS-main =	${LIB_DEPENDS-common} \
			${MODPHONON_LIB_DEPENDS} \
			${BASE_PKGPATH},-face \
			${BASE_PKGPATH},-geomap \
			devel/glib2 \
			graphics/jasper \
			graphics/lcms \
			graphics/lensfun>=0.2.6 \
			graphics/libgphoto2 \
			graphics/liblqr \
			graphics/libpgf \
			graphics/png \
			graphics/tiff \
			x11/kde4/libkdcraw \
			x11/kde4/libkexiv2 \
			x11/kde4/libkipi \
			x11/kde4/pimlibs

LIB_DEPENDS-mediawiki =	${LIB_DEPENDS-common}

LIB_DEPENDS-vkontakte = ${LIB_DEPENDS-common} \
			devel/qjson

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_CLAPACK:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Hupnp:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtGStreamer:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtKOAuth:Bool=Yes \
			-DDIGIKAMSC_USE_PRIVATE_KDEGRAPHICS:Bool=No \
			-DENABLE_INTERNALMYSQL:Bool=No \
			-DWITH_OpenMP:Bool=No

FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-DENABLE_ADVANCEDDEBUGMSG:Bool=Yes
.endif

.include <bsd.port.mk>
