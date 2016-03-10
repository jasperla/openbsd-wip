# $OpenBSD$

COMMENT =		Tox client library

DISTNAME =		toxcore-20151216
CATEGORIES =		net telephony
HOMEPAGE =		http://tox.im/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  toxav                     0.0 # 0.0
SHARED_LIBS +=  toxcore                   0.0 # 0.0
SHARED_LIBS +=  toxdns                    0.0 # 0.0
SHARED_LIBS +=  toxencryptsave            0.0 # 0.0


WANTLIB = c m opus pthread stdc++ sodium vpx

GH_ACCOUNT =		irungentoo
GH_PROJECT =		toxcore
GH_COMMIT =		0938ba08d9a839df4111168f3414099268d69737

MODULES =		gnu
#MODULES +=		lang/clang
#MODCLANG_ARCHS =	*

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

DOCS =			Group-Chats.md Hardening.txt Hardening_docs.txt \
			Prevent_Tracking.txt TCP_Network.txt TODO.md \
			Tox_middle_level_network_protocol.txt av_api.md \
			updates/Crypto.md updates/DHT.md \
			updates/Spam-Prevention.md \
			updates/Symmetric-NAT-Transversal.md

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	                AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tox
	${INSTALL_DATA} ${DOCS:%=${WRKBUILD}/docs/%} \
				${PREFIX}/share/doc/tox

.include <bsd.port.mk>
