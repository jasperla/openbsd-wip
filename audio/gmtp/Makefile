# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		simple audio player with MTP support

DISTNAME =		gmtp-1.3.9

#SHARED_LIBS =		???

CATEGORIES =		audio

HOMEPAGE =		http://gmtp.sourceforge.net/

#MAINTAINER =		???

# XXX
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gmtp/}

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		devel/libmtp \
			audio/flac \
			x11/gtk+3 \
			audio/libid3tag \
			audio/libvorbis
#TEST_DEPENDS =		???

WANTLIB += FLAC atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 id3tag intl m mtp pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread usb-1.0 vorbisfile z

USE_GMAKE =		Yes
#USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_TEST =		Yes

.include <bsd.port.mk>
