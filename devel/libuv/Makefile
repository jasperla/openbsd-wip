# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		multi-platform support library

V =			1.7.5
DISTNAME =		libuv-v${V}
PKGNAME =		libuv-${V}

SHARED_LIBS +=		uv	0.0 # 1.0

CATEGORIES =		devel
HOMEPAGE =		http://libuv.org

# MIT+ISC+BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += kvm pthread

MASTER_SITES =		http://dist.libuv.org/dist/v${V}/

AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	gnu

# autogen.sh needs libtoolize
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool


MAKE_ENV =	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	cd ${WRKSRC} && env ${MAKE_ENV} sh autogen.sh

# XXX build docs with sphinx
# XXX one test fails. Raise bug.

.include <bsd.port.mk>
