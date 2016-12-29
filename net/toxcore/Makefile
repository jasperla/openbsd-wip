# $OpenBSD$

COMMENT =		Tox client library

V =			0.1.2
DISTNAME =		toxcore-$V
CATEGORIES =		net telephony
HOMEPAGE =		https://tox.chat/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  toxav                     0.0 # 0.0
SHARED_LIBS +=  toxcore                   0.0 # 0.0
SHARED_LIBS +=  toxdns                    0.0 # 0.0
SHARED_LIBS +=  toxencryptsave            0.0 # 0.0

WANTLIB = c m opus pthread sodium vpx ${MODGCC4_CPPWANTLIB}

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

MODULES =		gnu gcc4

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/check \
			devel/libconfig \
			devel/libtool
LIB_DEPENDS =		audio/opus \
			multimedia/libvpx \
			security/libsodium

SEPATATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=${LDFLAGS} CPPFLAGS=${CPPFLAGS}
CONFIGURE_ARGS =	DISABLE_RT=yes

TEST_TARGET =		check

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	                AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
