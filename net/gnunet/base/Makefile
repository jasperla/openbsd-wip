# $OpenBSD$


COMMENT =		secure P2P framework

DISTNAME =		gnunet-${V}

SHARED_LIBS +=  gnunetarm                 0.0 # 0.0
SHARED_LIBS +=  gnunetats                 0.0 # 0.0
SHARED_LIBS +=  gnunetblock               0.0 # 0.0
SHARED_LIBS +=  gnunetcore                0.0 # 0.0
SHARED_LIBS +=  gnunetdatacache           0.0 # 0.0
SHARED_LIBS +=  gnunetdatastore           0.0 # 0.0
SHARED_LIBS +=  gnunetdht                 0.0 # 0.0
SHARED_LIBS +=  gnunetfragmentation       0.0 # 0.0
SHARED_LIBS +=  gnunetfs                  0.0 # 0.0
SHARED_LIBS +=  gnunethello               0.0 # 0.0
SHARED_LIBS +=  gnunetmesh                0.0 # 0.0
SHARED_LIBS +=  gnunetnamestore           0.0 # 0.0
SHARED_LIBS +=  gnunetnat                 0.0 # 0.0
SHARED_LIBS +=  gnunetnse                 0.0 # 0.0
SHARED_LIBS +=  gnunetpeerinfo            0.0 # 0.0
SHARED_LIBS +=  gnunetstatistics          0.0 # 0.0
SHARED_LIBS +=  gnunettesting             0.0 # 0.0
SHARED_LIBS +=  gnunettransport           0.0 # 0.0
SHARED_LIBS +=  gnunettransporttesting    0.0 # 0.0
SHARED_LIBS +=  gnunettun                 0.0 # 0.0
SHARED_LIBS +=  gnunetutil                0.0 # 5.0
SHARED_LIBS +=  gnunettestbed             0.0 # 0.0
SHARED_LIBS +=  gnunetregex               0.0 # 0.0
SHARED_LIBS +=  gnunetregexblock          0.0 # 1.0
SHARED_LIBS +=  gnunetdns                 0.0 # 0.0
SHARED_LIBS +=  gnunetdnsparser           0.0 # 0.0
SHARED_LIBS +=  gnunetdnsstub             0.0 # 0.0
SHARED_LIBS +=  gnunetgns                 0.0 # 0.0
SHARED_LIBS +=  gnunetvpn                 0.0 # 0.0
SHARED_LIBS +=  gnunetconversation        0.0 # 0.0
SHARED_LIBS +=  gnunetfriends             0.0 # 0.0
SHARED_LIBS +=  gnunetgnsrecord           0.0 # 0.0
SHARED_LIBS +=  gnunetidentity            0.0 # 0.0
SHARED_LIBS +=  gnunetmicrophone          0.0 # 0.0
SHARED_LIBS +=  gnunetnamecache           0.0 # 0.0
SHARED_LIBS +=  gnunetrevocation          0.0 # 0.0
SHARED_LIBS +=  gnunetset                 0.0 # 0.0
SHARED_LIBS +=  gnunetspeaker             0.0 # 0.0
SHARED_LIBS +=  gnunettestbedlogger       0.0 # 0.0

WANTLIB += FLAC ICE SM X11 X11-xcb Xext Xi Xtst bz2 c dbus-1 execinfo
WANTLIB += expat extractor fontconfig freetype gcrypt gdbm gpg-error
WANTLIB += idn json-c ltdl m ogg opus pthread pthread-stubs pulse
WANTLIB += sndfile sqlite3 unistring vorbis vorbisenc xcb z

MODULES =		devel/gettext
LIB_DEPENDS =		devel/libextractor \
			devel/libidn \
			security/libgcrypt \
			converters/libunistring \
			audio/pulseaudio

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}" \
			--without-mysql \
			--without-postgres \
			--with-sudo=/usr/bin/sudo
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"

LIBTOOL_FLAGS =		--tag=disable-static

.include <bsd.port.mk>
