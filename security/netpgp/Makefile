# $OpenBSD$

COMMENT =		BSD-licensed PGP implementation

V =			20101107
DISTNAME =		netpgp
PKGNAME =		${DISTNAME}-${V}

SHARED_LIBS +=		mj                        0.0 # 0.0
SHARED_LIBS +=		netpgp                    0.0 # 0.0

CATEGORIES =		security

HOMEPAGE =		http://www.netpgp.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		bz2 c crypto z

MASTER_SITES =		${HOMEPAGE}/src/

LIB_DEPENDS =		archivers/bzip2
REGRESS_DEPENDS =	devel/autoconf/2.68

REGRESS_FLAGS =		AUTOCONF_VERSION=2.68

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DOPENSSL_NO_IDEA" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/${DISTNAME}-${V}

.include <bsd.port.mk>
