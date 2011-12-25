# $OpenBSD$

COMMENT =		navigation software

DISTNAME =		gpsdrive-2.10pre4

CATEGORIES =		geo

HOMEPAGE =		http://www.gpsdrive.de/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}packages/

WANTLIB =		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pixman-1 png pthread stdc++ z

MODULES =		devel/gettext

LIB_DEPENDS =		graphics/libart \
					x11/gtk+2 \
					devel/pcre \
					textproc/libxml

LIB_DEPENDS-mysql=      databases/mysql 

#::databases/mysql
RUN_DEPENDS = 	www/p5-libwww
BUILD_DEPENDS = ${RUN_DEPENDS}

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
AUTOCONF_VERSION =	2.61
CONFIGURE_STYLE =	gnu autoconf

FAKE_FLAGS =		documentationdir=${PREFIX}/share/doc/gpsdrive \
			documentation1dir=${PREFIX}/share/doc/gpsdrive

.include <bsd.port.mk>
