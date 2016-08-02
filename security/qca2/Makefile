# $OpenBSD: Makefile,v 1.12 2016/03/18 23:12:19 naddy Exp $

COMMENT-main =	Qt Cryptographic Architecture
COMMENT-ossl =	SSL/TLS plugin
COMMENT-gnupg =	GnuPG plugin

DISTNAME =	qca-2.1.0

VERSION =	2.1.0
PKGNAME-main =	qca2-${VERSION}
PKGNAME-ossl =	qca-ossl-${VERSION}
PKGNAME-gnupg =	qca2-gnupg-${VERSION}

CATEGORIES =	security

SHARED_LIBS +=	qca2	1.0

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/

WANTLIB += c m stdc++

#Plugins: qca-botan qca-cyrus-sasl qca-gcrypt qca-gnupg qca-logger
# qca-nss qca-ossl qca-pkcs11 qca-softstore
MULTI_PACKAGES =	-main -ossl -gnupg
PSEUDO_FLAVORS =	no_ossl no_gnupg
FLAVOR ?=

CFLAGS +=		-DOPENSSL_NO_SSL2

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DBUILD_PLUGINS:Bool=Off \
			-DQT4_BUILD:Bool=On

.include <bsd.port.arch.mk>

MODULES =		devel/cmake \
			x11/qt4

BUILD_DEPENDS =		devel/doxygen

NO_TEST =		Yes

.if ${BUILD_PACKAGES:M-ossl} || ${BUILD_PACKAGES:M-gnupg}
CONFIGURE_ARGS +=	-DBUILD_PLUGINS="ossl;gnupg"
RUN_DEPENDS +=>-->-------${BUILD_PKGPATH},-main
.endif

.if ${BUILD_PACKAGES:M-gnupg}
RUN_DEPENDS +=>-->-------security/gnupg
.endif

.include <bsd.port.mk>
