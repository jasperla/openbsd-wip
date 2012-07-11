# $OpenBSD$

COMMENT =		TQt interface for avahi

DISTNAME =		avahi-tqt-${TDE_V}

SHARED_LIBS +=  avahi-tqt                 0.0 # 1.0

CATEGORIES =		x11 x11/tde net

PATCH_LIST =		patch-*

WANTLIB += GL ICE SM X11 Xcursor Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt avahi-common expat fontconfig freetype
WANTLIB += jpeg lcms m mng png pthread stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=dependencies/}

MODULES =		x11/tde \
			devel/gettext
BUILD_DEPENDS =		devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION}
LIB_DEPENDS =		x11/tde/tqt \
			net/avahi,-main,no_gui,no_mono,no_qt4,no_qt3

MAKE_ENV =		LOCALBASE="${LOCALBASE}"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-distro=none \
			--with-avahi-user=_avahi \
			--with-avahi-group=_avahi \
			--with-avahi-priv-access-group=wheel \
			--with-xml=expat \
			--disable-autoipd \
			--disable-stack-protector
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			ac_cv_path_MOC_QT3="${LOCALBASE}/bin/moc-tqt"
AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11
AUTOCONF =		autoconf

WRKDIST =		${WRKDIR}/dependencies/avahi-tqt

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} NOCONFIGURE=yes \
		sh ./autogen.sh

.include <bsd.port.mk>
