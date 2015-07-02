# $OpenBSD: Makefile,v 1.20 2015/02/16 22:57:13 naddy Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

COMMIT =	a06af0f911a32be114c1eede7f9d63112affd560
DISTNAME =	surf2-0.0.20150627
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Dmitrij D. Czarkoff

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += javascriptcoregtk-4.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread soup-2.4 webkit2gtk-4.0 z

DISTFILES =	${DISTNAME}{surf-${COMMIT}}${EXTRACT_SUFX}

MASTER_SITES =	http://git.suckless.org/surf/snapshot/

MODULES =	devel/gettext

LIB_DEPENDS =	www/webkitgtk4
RUN_DEPENDS =	devel/xdg-utils \
		net/curl \
		x11/dmenu

WRKDIST =	${WRKDIR}/surf-${COMMIT}

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

NO_TEST =	Yes

.include <bsd.port.mk>
