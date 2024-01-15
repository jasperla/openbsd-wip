COMMENT =	implementation of Language Server Protocol for Rust

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2024-01-15

PKGNAME =	rust-analyzer-${GH_TAGNAME:S/-//g}

# https://github.com/rust-lang/rust-analyzer
HOMEPAGE =	https://rust-analyzer.github.io/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

CATEGORIES =	devel

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

RUN_DEPENDS =	lang/rust,,-rustfmt lang/rust,,-src
BUILD_DEPENDS =	${RUN_DEPENDS} textproc/asciidoctor textproc/ruby-rouge

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MAKE_ENV +=	CFG_RELEASE=${GH_TAGNAME}

DOCDIR =	${PREFIX}/share/doc/rust-analyzer

# generate manual.html
post-build:
	${MODCARGO_CARGO_RUN} test \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--offline \
		--release \
		--verbose \
		-p ide-assists \
		-p ide-diagnostics \
		-p rust-analyzer \
		-- sourcegen_
	asciidoctor ${WRKSRC}/docs/user/manual.adoc

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/rust-analyzer ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/user/manual.html ${DOCDIR}

.include "crates.inc"

.include <bsd.port.mk>
