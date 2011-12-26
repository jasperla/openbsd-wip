# $OpenBSD$

COMMENT =		secure P2P framework

DISTNAME =		gnunet-0.9.0

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
SHARED_LIBS +=  gnunetnat                 0.0 # 0.0
SHARED_LIBS +=  gnunetnse                 0.0 # 0.0
SHARED_LIBS +=  gnunetpeerinfo            0.0 # 0.0
SHARED_LIBS +=  gnunetstatistics          0.0 # 0.0
SHARED_LIBS +=  gnunettesting             0.0 # 0.0
SHARED_LIBS +=  gnunettransport           0.0 # 0.0
SHARED_LIBS +=  gnunettransporttesting    0.0 # 0.0
SHARED_LIBS +=  gnunetutil                0.0 # 5.0

CATEGORIES =		net

HOMEPAGE =		http://gnunet.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += bz2 c crypto curl extractor gcrypt gpg-error idn ltdl
WANTLIB += m sqlite3 ssl z

MASTER_SITES =		${MASTER_SITE_GNU:=gnunet/}

MODULES =		devel/gettext
LIB_DEPENDS =		devel/libextractor \
			net/curl \
			devel/libidn \
			security/libgcrypt \
			databases/sqlite3
#REGRESS_DEPENDS =	???

USE_GMAKE =		Yes
USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}" \
			--without-mysql \
			--without-postgres \
			--with-daemon-home-dir=/var/gnunet \
			--with-sudo=/usr/bin/sudo
#CONFIGURE_ENV =	???

#NO_REGRESS =		Yes

.include <bsd.port.mk>
