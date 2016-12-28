# $OpenBSD$


COMMENT=		GNU SmallTalk

DISTNAME=		smalltalk-3.2.5
CATEGORIES=		lang
SHARED_LIBS +=	gst     0.0                      # .8.3

HOMEPAGE=		http://smalltalk.gnu.org/

# LGPLv2.1+GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=smalltalk/}
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/gettext \
			x11/tk

WANTLIB += SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss atk-1.0 c cairo execinfo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz hogweed ltdl m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs readline sigsegv sndio sqlite3
WANTLIB += tasn1 termcap usbhid xcb xcb-render xcb-shm z
WANTLIB += ${MODTK_WANTLIB}

BUILD_DEPENDS=		lang/gawk \
			devel/libtool \
			archivers/zip
LIB_DEPENDS=		devel/libtool,-ltdl \
			devel/libexecinfo \
			devel/libsigsegv \
			devel/sdl \
			security/gnutls \
			x11/gtk+2

USE_GMAKE=		Yes
# unrecognized option '-bindir'
USE_LIBTOOL=		gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-system-libsigsegv \
			--with-system-libltdl \
			--with-imagedir="${PREFIX}/lib/gnu-smalltalk/" \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.5" \
			--with-tk="${LOCALBASE}/lib/tcl/tk8.5" \
			--without-emacs
CONFIGURE_ENV+=		CPPFLAGS+="-I${LOCALBASE}/include" \
			LDFLAGS+="-I${LOCALBASE}/lib" \
			ac_cv_prog_AWK=gawk

.include <bsd.port.mk>
