# $OpenBSD$

COMMENT =		distributed builds for C, C++ and Objective C

# latest commit to master
GH_COMMIT =		267fe5be154ca375ac574875894b476b60f19af0
GH_PROJECT =		distcc
GH_ACCOUNT =		distcc
DISTNAME =		distcc-3.1.1
CATEGORIES =		devel net

HOMEPAGE =		https://github.com/distcc/distcc

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

LIB_DEPENDS =		devel/popt

WANTLIB +=		c popt pthread ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--without-libiberty \
			--without-avahi

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/distcc"

# autohell
AUTOCONF_VERSION =      2.62
AUTOMAKE_VERSION =      1.11
BUILD_DEPENDS +=        ${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	@cd ${WRKSRC} && \
	env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		    	/bin/sh ./autogen.sh
# /autohell

.include <bsd.port.mk>
