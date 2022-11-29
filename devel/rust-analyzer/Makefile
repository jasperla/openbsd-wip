COMMENT =	experimental Rust compiler front-end for IDEs

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2022-11-28

PKGNAME =	rust-analyzer-${GH_TAGNAME:S/-//g}

HOMEPAGE =	https://rust-analyzer.github.io/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

CATEGORIES =	devel

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
MODULES =	devel/cargo
BUILD_DEPENDS =	textproc/asciidoctor

WANTLIB +=	${MODCARGO_WANTLIB}

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

DOCDIR =	${PREFIX}/share/doc/rust-analyzer
TMP_DOCDIR =	${WRKSRC}/docs_html

post-extract:
	@sed -i "s/0.0.0/${GH_TAGNAME}/" ${WRKSRC}/crates/rust-analyzer/src/version.rs

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
