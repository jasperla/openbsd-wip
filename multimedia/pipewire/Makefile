# XXX add ncursesw support to build pw-top; missing pkg-config file, see:
# https://cgit.freebsd.org/ports/tree/multimedia/pipewire/Makefile
# https://cgit.freebsd.org/src/commit/?id=396851c20aeb

# XXX add support for pw_get_application_name
# src/pipewire/pipewire.c

COMMENT=		server and user space API for multimedia pipelines

V=			0.3.57
DISTNAME=		pipewire-${V}

SHARED_LIBS += pipewire-0.3              0.0 # 0.357.0

CATEGORIES=		multimedia audio

HOMEPAGE=		https://pipewire.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += c dbus-1 epoll-shim glib-2.0 gobject-2.0 gstallocators-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += m pthread readline

MASTER_SITES=		https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/${V}/

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/epoll-shim \
			multimedia/gstreamer1/plugins-base

CONFIGURE_ARGS=		-Dsystemd=disabled \
			-Dsystemd-user-service=disabled \
			-Dudev=disabled \
			-Dlegacy-rtkit=false \
			-Dalsa=disabled \
			-Dflatpak=disabled \

# until proven useful
CONFIGURE_ARGS +=	-Dpipewire-alsa=disabled \
			-Dpipewire-jack=disabled \
			-Dpipewire-v4l2=disabled \
			-Dbluez5=disabled \
			-Djack=disabled \
			-Dv4l2=disabled \
			-Dlibcamera=disabled \
			-Dsdl2=disabled \
			-Dsndfile=disabled \
			-Dlibpulse=disabled \
			-Droc=disabled \
			-Davahi=disabled \
			-Decho-cancel-webrtc=disabled \
			-Dlibusb=disabled \
			-Draop=disabled \
			-Dlv2=disabled \
			-Dlibcanberra=disabled \
			-Davb=disabled

# depends on libsndfile (which we disable above)
CONFIGURE_ARGS +=	-Dpw-cat=disabled

# XXX needs alsa
CONFIGURE_ARGS +=	-Dsession-managers=[]

# libintl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
