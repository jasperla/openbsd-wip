COMMENT =	modular Rust compiler front-end for IDEs

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2023-02-27

PKGNAME =	rust-analyzer-${GH_TAGNAME:S/-//g}

HOMEPAGE =	https://rust-analyzer.github.io/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

CATEGORIES =	devel

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cargo
BUILD_DEPENDS =	textproc/asciidoctor

WANTLIB +=	${MODCARGO_WANTLIB}

CONFIGURE_STYLE =	cargo
MAKE_ENV +=	CFG_RELEASE=${GH_TAGNAME}

SEPARATE_BUILD =	Yes

PATCHORIG =	.port.orig

DOCDIR =	${PREFIX}/share/doc/rust-analyzer
TMP_DOCDIR =	${WRKSRC}/docs_html

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/rust-analyzer ${PREFIX}/bin/

	# Convert user manual from AsciiDoc format to HTML
	@rm -rf ${TMP_DOCDIR}
	@mkdir -p ${TMP_DOCDIR}
	asciidoctor -q -D ${TMP_DOCDIR} ${WRKSRC}/docs/user/manual.adoc

	${INSTALL_DATA_DIR} ${DOCDIR}
	cp ${TMP_DOCDIR}/manual.html ${DOCDIR}

.include "crates.inc"

.include <bsd.port.mk>
