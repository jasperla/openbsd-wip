COMMENT =	modular Rust compiler front-end for IDEs

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2023-06-19

PKGNAME =	rust-analyzer-${GH_TAGNAME:S/-//g}

HOMEPAGE =	https://rust-analyzer.github.io/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

CATEGORIES =	devel

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cargo

RUN_DEPENDS =	lang/rust,,-rustfmt lang/rust,,-src
BUILD_DEPENDS =	${RUN_DEPENDS} textproc/asciidoctor textproc/ruby-rouge

WANTLIB +=	${MODCARGO_WANTLIB} m

CONFIGURE_STYLE =	cargo
MODCARGO_TEST =		Yes
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
