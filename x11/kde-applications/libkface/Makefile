# $OpenBSD: Makefile,v 1.1.1.1 2015/07/08 22:54:49 zhuk Exp $

COMMENT =	face detection library for KDE
DISTNAME =	libkface-${VERSION}

SHARED_LIBS =  KF5KFace                  0.0 # 5.0

CATEGORIES =	graphics math

KDE5 =		Yes

WANTLIB += Qt5Core Qt5Gui Qt5Sql Qt5Widgets Qt5Xml m opencv_calib3d
WANTLIB += opencv_contrib opencv_core opencv_features2d opencv_flann
WANTLIB += opencv_gpu opencv_highgui opencv_imgproc opencv_legacy
WANTLIB += opencv_ml opencv_nonfree opencv_objdetect opencv_ocl
WANTLIB += opencv_photo opencv_video pthread

LIB_DEPENDS =	graphics/opencv

NO_TEST =	Yes

.include <bsd.port.mk>
