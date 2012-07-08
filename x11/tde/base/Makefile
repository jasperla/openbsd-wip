# $OpenBSD$

COMMENT-main =		Trinity Desktop Environment, basic applications
COMMENT-samba =		Trinity Desktop Environment, samba support

V =			${TDE_V}
DISTNAME =		kdebase-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-samba =		kdesamba-${V}

SHARED_LIBS +=  kasbar                    3.0 # 1.0
SHARED_LIBS +=  kateinterfaces            2.0 # 0.0
SHARED_LIBS +=  kateutils                 2.0 # 0.0
SHARED_LIBS +=  kdecorations              3.0 # 1.0
SHARED_LIBS +=  kfontinst                 2.0 # 0.0
SHARED_LIBS +=  khotkeys_shared           3.0 # 1.0
SHARED_LIBS +=  kickermain                3.0 # 1.0
SHARED_LIBS +=  kickoffsearch_interfaces  0.0 # 0.0
SHARED_LIBS +=  konq                      8.0 # 4.2
SHARED_LIBS +=  konqsidebarplugin         5.0 # 1.2
SHARED_LIBS +=  ksgrd                     5.0 # 1.2
SHARED_LIBS +=  ksplashthemes             2.0 # 0.0
SHARED_LIBS +=  taskbar                   5.0 # 1.2
SHARED_LIBS +=  taskmanager               3.0 # 1.0
SHARED_LIBS +=  qtkde                     0.0 # 0.0

MULTI_PACKAGES =	-main -samba

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype idn kdecore kdefx kdesu kdeui kio kwalletclient
WANTLIB += m stdc++ tqt util z
WANTLIB-main += GL Xau Xcursor Xdamage Xext Xfixes Xft Xinerama Xrandr
WANTLIB-main += Xt Xtst artsflow artsflow_idl artskde crypto dbus-1
WANTLIB-main += dbus-tqt-1 glib-2.0 jpeg kabc katepartinterfaces kdeprint
WANTLIB-main += kdeprint_management kdnssd khtml kjs kmedia2_idl kmid
WANTLIB-main += knewstuff kparts krandr kresources krsync kscreensaver
WANTLIB-main += ktexteditor kutils mcop pthread qtmcop sasl2 soundserver_idl
WANTLIB-main += ssl usb vcard xkbfile ${WANTLIB}
WANTLIB-samba = ${WANTLIB} lib/samba/smbclient

MODULES =		x11/tde \
			devel/gettext
#BUILD_DEPENDS =	???
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/tde/dbus-tqt \
			devel/libusb-compat \
			security/cyrus-sasl2
LIB_DEPENDS-samba =	${LIB_DEPENDS} \
			net/samba


CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DBUILD_TSAK=OFF \
			-DCMAKE_REQUIRED_LIBRARIES="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			-DSYSCONF_INSTALL_DIR="${PREFIX}/share/apps/kde-conf-sample" \
			-DSYSCONF_DIR="${SYSCONFDIR}" \
			-DWITH_SASL=ON \
			-DWITH_SAMBA=ON \
			-DWITH_OPENEXR=ON \
			-DWITH_XCOMPOSITE=ON \
			-DWITH_XCURSOR=ON \
			-DWITH_XRANDR=ON \
			-DWITH_XRENDER=ON \
			-DWITH_XDAMAGE=ON \
			-DWITH_XEXT=ON \
			-DWITH_XFIXES=ON \
			-DWITH_LIBUSB=ON \
			-DWITH_XINERAMA=ON \
			-DWITH_ARTS=ON \
			-DWITH_LDAP=ON
CONFIGURE_ENV =		HOME="${PORTHOME}"

WRKDIST =		${WRKDIR}/kdebase

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
