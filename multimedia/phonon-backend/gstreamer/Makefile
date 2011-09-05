# $OpenBSD$

COMMENT =	GStreamer-based Phonon backend
VERSION =	4.5.1
DISTNAME =	phonon-backend-gstreamer-${VERSION}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-gstreamer/${VERSION}/src/}

#SHARED_LIBS +=		phonon 6.0

LIB_DEPENDS +=	multimedia/gstreamer-0.10/core

WANTLIB +=	GL QtGui QtOpenGL glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB +=	gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB +=	gstreamer-0.10 gstvideo-0.10 gthread-2.0 m stdc++

.include <bsd.port.mk>
