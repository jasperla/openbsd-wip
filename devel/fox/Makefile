# $OpenBSD: Makefile,v 1.22 2011/11/04 09:18:43 jasper Exp $

COMMENT =	C++ toolkit for GUI
CATEGORIES =	devel

DISTNAME =	fox-1.6.44

SHARED_LIBS +=	FOX-1.6              2.0      # .0.37
SHARED_LIBS +=	CHART-1.6            1.0      # .0.28
MASTER_SITES =	ftp://ftp.fox-toolkit.org/pub/
HOMEPAGE =	http://www.fox-toolkit.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	archivers/bzip2 \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ENV += \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS += \
	--x-includes=${X11BASE}/include \
	--x-libraries=${X11BASE}/lib \
	--with-xft

# LGPL or looser
PERMIT_DISTFILES_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
USE_LIBTOOL =	Yes
USE_GROFF =	Yes

FOX =		fox-1.6
SUBST_VARS =	FOX

WANTLIB =	GL GLU X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xrender \
		Xrandr Xxf86vm c bz2 drm expat fontconfig freetype jpeg \
		m png pthread pthread-stubs stdc++ tiff xcb z

.include <bsd.port.mk>
