COMMENT=		server and user space API for multimedia pipelines

PW_PROJECT=		pipewire
PW_VERSION=		0.3.57

SHARED_LIBS += pipewire-0.3              0.0 # 0.357.0

CATEGORIES=		audio

WANTLIB += c curses dbus-1 epoll-shim glib-2.0 gobject-2.0
WANTLIB += gstallocators-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 intl m pthread readline

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

.include <bsd.port.mk>
