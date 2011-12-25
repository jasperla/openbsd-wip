# $OpenBSD$

COMMENT =		GPS photo correlation

DISTNAME =		gpscorrelate-1.6.1

CATEGORIES =		geo

HOMEPAGE =		http://www.freefoote.com/linux_gpscorr.html

#MAINTAINER =		???

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig freetype \
			gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
			pthread pthread-stubs stdc++ xcb  xcb-render \
			xcb-render-util z

MASTER_SITES =		http://www.freefoote.com/linux/

MODULES =		devel/gettext \
				textproc/intltool

BUILD_DEPENDS =		textproc/libxslt \
					converters/xmltoman \
					textproc/docbook \
					textproc/docbook-xsl

LIB_DEPENDS =		graphics/cairo \
					graphics/exiv2 \
					x11/gtk+2 \
					textproc/libxml

RUN_DEPENDS = 		devel/desktop-file-utils \
					sysutils/gamin,-server

USE_X11 =		Yes
USE_GMAKE =		Yes
FAKE_FLAGS += 		mandir="${PREFIX}/man"

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/gpscorrelate.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/gpscorrelate-gui.svg ${PREFIX}/share/icons/hicolor/scalable/apps/


.include <bsd.port.mk>
