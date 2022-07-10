COMMENT =		DigiDoc4 GUI client for signing and encrypting documents

V =			4.2.11
GH_ACCOUNT =		open-eid
GH_PROJECT =		DigiDoc4-Client
GH_COMMIT =		3365785677791e81c9ac8243092b0e2105f9c1d5
DISTNAME =		qdigidoc4-${V}pl20220707
DISTFILES =		${GH_DISTFILE}
CATEGORIES =		security x11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/

MASTER_SITES0 =		https://id.eesti.ee/
DISTFILES +=		qdigidoc4-{}config.json:0 \
			qdigidoc4-{}config.pub:0 \
			qdigidoc4-{}config.rsa:0
# ${WRKSRC}/common/CMakeLists.txt itself substitutes suffix in CONFIG_URL
CONFIGURE_ENV +=	CONFIG_URL=file://${DISTDIR}/${PKGSTEM}-config.json

MASTER_SITES1 =		https://ec.europa.eu/tools/lotl/
DISTFILES +=		qdigidoc4-{}eu-lotl.xml:1
CONFIGURE_ENV +=	TSL_URL=file://${DISTDIR}/qdigidoc4-eu-lotl.xml

# simpler than handrolling DISTFILES *and* EXTRACT_ONLY
EXTRACT_CASES +=	*.json|*.pub|*.rsa|*.xml)	;;

MASTER_SITES2 =		https://github.com/open-eid/DigiDoc4-Client/
PATCHFILES +=		qdigidoc4-bsd-{pull/}1072.patch:2

MASTER_SITES3 =		https://github.com/open-eid/cmake/
CMAKE_COMMIT =		eececc017b2d40e025018727afb9d925482e1a14
DISTFILES +=		open-eid-cmake-{archive/}${CMAKE_COMMIT}${EXTRACT_SUFX}:3

MASTER_SITES4 =		https://github.com/open-eid/digidoc-extensions/
EXTENSIONS_COMMIT =	963dfabaf8592f0e1190dfb8697bc6bba7a3cd33
DISTFILES +=		open-eid-digidoc-extensions-{archive/}${EXTENSIONS_COMMIT}${EXTRACT_SUFX}:4

MASTER_SITES5 =		https://github.com/open-eid/qt-common/
COMMON_COMMIT =		d9623b38d2bf722e958619093c1651c8c6d8a653
DISTFILES +=		open-eid-qt-common-{archive/}${COMMON_COMMIT}${EXTRACT_SUFX}:5
PATCHFILES +=		open-eid-qt-common-pcsc-lite-{pull/}121.patch:4
PATCH_CASES +=		open-eid-qt-common-*.patch) \
				${PATCH} ${PATCH_DIST_ARGS} < $$patchfile \
				    -d${WRKSRC}/common ;;

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB +=		${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB +=		Qt5Svg Qt5Widgets c crypto digidocpp lber ldap m pcsclite ssl

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools \
			x11/qt5/qttools

LIB_DEPENDS =		databases/openldap,-main \
			security/libdigidocpp>=3.14.8 \
			security/pcsc-lite \
			x11/qt5/qtsvg \

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/qt5/qttranslations \
			x11/gtk+3,-guic

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in qdigidoc4
LIB_DEPENDS +=		security/opensc
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

NO_TEST =		Yes

post-extract:
	# hook up prefetched submodules
	rmdir ${WRKSRC}/{cmake,extensions,common}
	ln -s ${WRKDIR}/cmake-${CMAKE_COMMIT} ${WRKSRC}/cmake
	ln -s ${WRKDIR}/digidoc-extensions-${EXTENSIONS_COMMIT} ${WRKSRC}/extensions
	ln -s ${WRKDIR}/qt-common-${COMMON_COMMIT} ${WRKSRC}/common

# Pending "Update plugin for KDE Plasma"
# https://github.com/open-eid/digidoc-extensions/pull/21
post-install:
	# fix program name in KDE extension
	sed -i -E s/qdigidoc-?client/qdigidoc4/ \
	    ${PREFIX}/share/kservices5/qdigidoc-signer.desktop

.include <bsd.port.mk>
