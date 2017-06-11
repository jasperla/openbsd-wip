# $OpenBSD: $

COMMENT =	KDE digital photo management utility

CATEGORIES =	graphics
VERSION =	5.5.0
DISTNAME =	digikam-${VERSION}

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		devel/bison \
		devel/boost \
		devel/gettext-tools \
		devel/kf5/kdoctools \
		math/eigen3 \
		misc/shared-desktop-ontologies \
		x11/gtk+3,-guic

RUN_DEPENDS +=	devel/gettext \
		devel/kf5/kdoctools

LIB_DEPENDS +=	devel/kf5/kservice \
		devel/kf5/kcoreaddons \
		devel/kf5/solid \
		devel/kf5/kiconthemes \
		devel/kf5/kbookmarks \
		devel/kf5/kfilemetadata \
		devel/kf5/kconfig \
		devel/kf5/kwindowsystem \
		devel/kf5/ki18n \
		devel/kf5/karchive \
		devel/kf5/kio \
		devel/kf5/threadweaver \
		devel/kf5/knotifyconfig \
		x11/qt5/qtxmlpatterns \
		graphics/jpeg \
		graphics/tiff \
		graphics/png \
		graphics/lcms \
		graphics/libgphoto2 \
		graphics/jasper \
		graphics/lensfun \
		graphics/opencv \
		graphics/liblqr \
		x11/kde-applications/kcalcore

# XXX Don't try to compile documentation translations for the moment.
# https://www.mail-archive.com/kde-bugs-dist@kde.org/msg125271.html
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DDIGIKAMSC_COMPILE_DOC=OFF \
			-DENABLE_MEDIAPLAYER=OFF \
			-DENABLE_MYSQLSUPPORT=OFF

TEST_IS_INTERACTIVE =	X11

pre-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} core/digikam-gitversion


.include <bsd.port.mk>
