# $OpenBSD: Makefile,v 1.1.1.1 2016/04/25 17:43:39 tb Exp $

COMMENT =	simple, lightweight XMPP C library
VERSION =	0.9.1
DISTNAME =	libstrophe-${VERSION}
CATEGORIES =	net devel

HOMEPAGE =	http://strophe.im/libstrophe/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE_CDROM =	Yes

DISTFILES=	libstrophe-{libstrophe/archive/}${VERSION}${EXTRACT_SUFX}
MASTER_SITES=	https://github.com/strophe/


SHARED_LIBS =   strophe                 1.0 # 0.0

WANTLIB += crypto expat ssl

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

USE_GMAKE =		Yes
CONFIGURE_STYLE = 	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

post-patch:
	@mkdir -p ${WRKSRC}/m4 # need for autoreconf

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --install

.include <bsd.port.mk>
