COMMENT =	syntax-aware git merge driver

VERSION =	0.3.0

DISTNAME =	mergiraf-${VERSION}

DIST_TUPLE =	codeberg mergiraf mergiraf v${VERSION} .

# Specific version for crate tree-sitter-xml
TS_XML_HASH =	cd1316e476ec40da6ce1fb5749c9d7e6b4f1090c

DIST_TUPLE +=   github tree-sitter-grammars tree-sitter-xml ${TS_XML_HASH} \
		${MODCARGO_VENDOR_DIR}/tree-sitter-xml-${TS_XML_HASH}

CATEGORIES =	devel

# https://codeberg.org/mergiraf/mergiraf
HOMEPAGE =	https://mergiraf.org/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS +=	devel/cargo-generate-vendor

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

SUBST_VARS +=	MODCARGO_VENDOR_DIR TS_XML_HASH

post-extract:
	mv ${WRKDIR}/mergiraf/ ${WRKDIST}

post-patch:
	${SUBST_CMD} ${WRKSRC}/Cargo.toml

	${LOCALBASE}/bin/cargo-generate-vendor \
                ${FULLDISTDIR}/tree-sitter-grammars-tree-sitter-xml-${TS_XML_HASH}.tar.gz \
                ${MODCARGO_VENDOR_DIR}/tree-sitter-xml-${TS_XML_HASH}

.include "crates.inc"

.include <bsd.port.mk>
