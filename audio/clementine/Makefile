# $OpenBSD$

SHARED_ONLY =	Yes
CATEGORIES =	audio x11
COMMENT =	Qt4-based music player forked from amaroK 1.4
DISTNAME =	clementine-0.7.1
HOMEPAGE =	http://clementine-player.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>
MASTER_SITES =	http://clementine-player.googlecode.com/files/

# GPLv2/LGPLv2/GFDL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes

FLAVORS =	debug

WANTLIB += 	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += 	lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtWebKit
WANTLIB +=	lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB +=	GL GLU GLEW ICE SM X11 Xext c gio-2.0 glib-2.0 gmodule-2.0
WANTLIB +=	gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB +=	lastfm m mtp pthread stdc++ tag>=5.0 usb xml2 z

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/qt4,-sqlite

LIB_DEPENDS +=	audio/taglib>=1.4 \
		audio/libnjb \
		devel/liblastfm \
		devel/libmtp \
		graphics/glew

# Requires audio/libgpod update, disable to avoid picking by accident
CONFIGURE_ARGS +=	-DENABLE_LIBGPOD:Bool=No \
			-DENABLE_IMOBILEDEVICE:Bool=No

# Unported stuff
CONFIGURE_ARGS +=	-DENABLE_SOUNDMENU:Bool=No

MODULES =		devel/cmake x11/qt4 devel/gettext
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
