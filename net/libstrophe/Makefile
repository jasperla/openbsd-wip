# $OpenBSD$

COMMENT =	simple, lightweight XMPP C library
DISTNAME =	libstrophe-0.8.8
CATEGORIES =	net devel

HOMEPAGE =	http://strophe.im/libstrophe/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE_CDROM =	Yes


GH_ACCOUNT =	strophe
GH_PROJECT =	libstrophe
GH_COMMIT =	2093aac817cfd37fcbcd8465af6234280a383961

SHARED_LIBS =   strophe                 0.0 # 0.0

WANTLIB += crypto expat pthread ssl

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


post-patch:
	@mkdir -p ${WRKSRC}/m4 # need for autoreconf

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				AUTOCONF_VERSION=${AUTOCONF_VERSION} \
				autoreconf --install

.include <bsd.port.mk>
