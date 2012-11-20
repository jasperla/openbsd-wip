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
SHARED_LIBS +=  gnunetlockmanager         0.0 # 0.0
SHARED_LIBS +=  gnunettestbed             0.0 # 0.0
SHARED_LIBS +=  gnunetmeshblock           0.0 # 2.0
SHARED_LIBS +=  gnunetregex               0.0 # 0.0
SHARED_LIBS +=  gnunetstream              0.0 # 0.0
SHARED_LIBS +=  gnunettesting_old         0.0 # 0.1
SHARED_LIBS +=  gnunetdns                 0.0 # 0.0
SHARED_LIBS +=  gnunetdnsparser           0.0 # 0.0
SHARED_LIBS +=  gnunetdnsstub             0.0 # 0.0
SHARED_LIBS +=  gnunetgns                 0.0 # 0.0
SHARED_LIBS +=  gnunetgns_common          0.0 # 0.0
SHARED_LIBS +=  gnunetvpn                 0.0 # 0.0

WANTLIB += bz2 c crypto curl expat extractor fontconfig freetype
WANTLIB += gcrypt gpg-error idn ltdl m pthread sqlite3 ssl unistring
WANTLIB += z

MODULES =		devel/gettext
LIB_DEPENDS =		devel/libextractor \
			net/curl \
			devel/libidn \
			security/libgcrypt \
			converters/libunistring

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}" \
			--without-mysql \
			--without-postgres \
			--with-daemon-home-dir=/var/gnunet \
			--with-sudo=/usr/bin/sudo

.include <bsd.port.mk>
