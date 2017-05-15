# $OpenBSD:
#
COMMENT =	Cluster synchronization tool

DISTNAME =	csync2-2.0

CATEGORIES =	net

HOMEPAGE =	http://oss.linbit.com/csync2/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c gnutls pthread rsync

# XXX TODO
# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://oss.linbit.com/csync2/

LIB_DEPENDS =		net/librsync \
			databases/sqlite \
			security/libtasn1 \
			security/gnutls \
			security/libgcrypt \
			security/libgpg-error

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
