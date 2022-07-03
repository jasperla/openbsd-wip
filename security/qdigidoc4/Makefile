COMMENT =		DigiDoc4 GUI client for signing and encrypting documents

V =			4.2.11
DISTNAME =		qdigidoc4_${V}.110-1804
EXTRACT_SUFX =		.tar.xz
WRKDIST =		${WRKDIR}/qdigidoc4
PKGNAME =		qdigidoc4-${V}
CATEGORIES =		security x11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.id.ee/

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/open-eid/DigiDoc4-Client/releases/download/v${V}/
DISTFILE_SRC =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =		https://id.eesti.ee/
DISTFILES_ID =		${PKGSTEM}-{}config.json:0 \
			${PKGSTEM}-{}config.pub:0 \
			${PKGSTEM}-{}config.rsa:0
CONFIGURE_ENV +=	CONFIG_URL=file://${DISTDIR}/${PKGSTEM}-config.json

MASTER_SITES1 =		https://ec.europa.eu/tools/lotl/
DISTFILE_TSL =		${PKGSTEM}-{}eu-lotl.xml:1
CONFIGURE_ENV +=	TSL_URL=file://${DISTDIR}/${PKGSTEM}-eu-lotl.xml

DISTFILES =		${DISTFILE_SRC} \
			${DISTFILES_ID} \
			${DISTFILE_TSL}
EXTRACT_ONLY =		${DISTFILE_SRC}

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB +=		${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB +=		Qt5Svg Qt5Widgets c digidocpp lber ldap m pcsclite

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools

# requires file(DOWNLOAD, file:///...) fix
BUILD_DEPENDS +=	devel/cmake>=3.23.1p0v0

LIB_DEPENDS =		databases/openldap,-main \
			security/libdigidocpp>=3.14.8 \
			security/pcsc-lite \
			x11/qt5/qtsvg

RUN_DEPENDS =		x11/qt5/qttranslations

# force ports OpenSSL until upstream supports LibreSSL or we patch it in
# link statically since dependencies (libldap) may link against LibreSSL
BUILD_DEPENDS +=	security/openssl/1.1>=1.1.1m,<3
CXXFLAGS +=		-I/usr/local/include/eopenssl11
LDFLAGS +=		/usr/local/lib/eopenssl11/libcrypto.a \
			/usr/local/lib/eopenssl11/libssl.a
CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in qdigidoc4
LIB_DEPENDS +=		security/opensc
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

NO_TEST =		Yes

# Pending "Update plugin for KDE Plasma"
# https://github.com/open-eid/digidoc-extensions/pull/21
post-install:
	# fix program name in KDE extension
	sed -i -E s/qdigidoc-?client/qdigidoc4/ \
	    ${PREFIX}/share/kservices5/qdigidoc-signer.desktop

.include <bsd.port.mk>
