# $OpenBSD$

CATEGORIES =	audio x11
COMMENT =	Qt4-based music player forked from amaroK 1.4
DISTNAME =	clementine-0.7.1
REVISION =	0
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
WANTLIB +=	gobject-2.0 gpod gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB +=	m mtp pthread stdc++ tag>=5.0 usb xml2 z

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/qt4,-sqlite

LIB_DEPENDS +=	audio/taglib>=1.4 \
		audio/libgpod \
		audio/libnjb \
		devel/libmtp \
		graphics/glew \
		audio/libgpod,-main

MODULES =		devel/cmake x11/qt4 devel/gettext
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
