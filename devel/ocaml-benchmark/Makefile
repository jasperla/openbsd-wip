# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	measure/compare run-time of OCaml functions
CATEGORIES =	devel

GH_ACCOUNT =	Chris00
GH_PROJECT =	ocaml-benchmark
GH_TAGNAME =	1.3.1
GH_COMMIT =	ef2e48f1e9f74bb9a085cc7c22a873bf1e62d1d8
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/oasis \
			sysutils/findlib \
			devel/ocaml-pcre

ALL_TARGET =		api.docdir/index.html benchmark.cma
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		benchmark.cmxa
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=		benchmark.cmxs
.endif
.endif


post-extract:
	echo Benchmark >${WRKSRC}/api.odocl

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ocamlbuild ${ALL_TARGET}

do-install:
	env -i ${MAKE_ENV} ocamlfind install -patch-version ${GH_TAGNAME} \
		benchmark \
		${FILESDIR}/META ${WRKSRC}/_build/benchmark.{a,o,cm*,mli}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-benchmark/api
	${INSTALL_DATA} \
		${WRKSRC}/_build/api.docdir/* \
		${PREFIX}/share/doc/ocaml-benchmark/api/
	${INSTALL_DATA} \
		${WRKSRC}/ChangeLog \
		${PREFIX}/share/doc/ocaml-benchmark/


.include <bsd.port.mk>
