# $OpenBSD$

COMMENT =	GStreamer-based Phonon backend
VERSION =	4.6.0
DISTNAME =	phonon-backend-gstreamer-${VERSION}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-gstreamer/${VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

LIB_DEPENDS =	multimedia/gstreamer-0.10/core \
		devel/glib2

WANTLIB +=	GL m stdc++
WANTLIB +=	lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB +=	gstreamer-0.10 gstvideo-0.10 gstapp-0.10

.include <bsd.port.mk>
