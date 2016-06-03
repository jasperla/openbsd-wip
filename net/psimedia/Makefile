# $OpenBSD$


COMMENT =	voice and video API for Psi-like IM clients

DISTNAME =	psimedia-1.0.3
CATEGORIES =	net

HOMEPAGE =	http://delta.affinix.com/psimedia/

MASTER_SITES =	http://delta.affinix.com/download/psimedia/
EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstnetbuffer-0.10 gstreamer-0.10
WANTLIB += gstrtp-0.10 gstvideo-0.10 gthread-2.0 intl m oil-0.3
WANTLIB += pthread speexdsp stdc++ xml2

USE_GMAKE =	Yes

MODULES =	x11/qt4

LIB_DEPENDS =	audio/speex \
		devel/glib2 \
		devel/liboil \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		textproc/libxml

RUN_DEPENDS =	net/psi \
		multimedia/gstreamer-0.10/plugins-good

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--release

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/psi/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gstprovider/libgstprovider.so ${PREFIX}/lib/psi/plugins

.include <bsd.port.mk>
