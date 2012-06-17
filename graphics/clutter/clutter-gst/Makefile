# $OpenBSD: Makefile,v 1.8 2011/04/07 13:10:58 ajacoutot Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		1.4.6

SHARED_LIBS +=  clutter-gst-1.0    0.0      # 406.0

MODULES=		devel/gettext

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer-0.10/plugins-base

.include <bsd.port.mk>
