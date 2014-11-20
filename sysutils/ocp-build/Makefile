# $OpenBSD: $

COMMENT =	build tool for OCaml
CATEGORIES =	sysutils

V =		1.99.8beta
GH_ACCOUNT =	OCamlPro
GH_PROJECT =	ocp-build
GH_TAGNAME =	ocp-build.1.99.8-beta
GH_COMMIT =	2e576ce4903635da55e1bb9373aee352bc83da27
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	${GH_PROJECT}-${V}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# GPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c curses m pthread
BUILD_DEPENDS =		devel/ocaml-cmdliner \
			lang/ocaml-camlp4

CONFIGURE_STYLE =	gnu
USE_GMAKE =		yes
MAKE_ENV =		TERM=dumb

NO_TEST =		yes


# Work around ocp-build bug which breaks bytocode only installing
.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
post-build:
	touch ${WRKSRC}/_obuild/ocp-build/ocp-build.asm
	for x in `find ${WRKSRC}/_obuild -name \*.cmo`; do \
		touch `dirname $$x`/`basename $$x .cmo`.cmx; \
	done
	for x in `find ${WRKSRC}/_obuild -name \*.cma`; do \
		touch `dirname $$x`/`basename $$x .cma`.{cmxa,a}; \
	done
.endif

post-install:
.if ! ${PROPERTIES:Mocaml_native}
	ln -f ${PREFIX}/bin/ocp-build.byte ${PREFIX}/bin/ocp-build
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocp-build
	${INSTALL_DATA} \
		${WRKDIST}/{README.md,CHANGES} \
		${WRKDIST}/docs/user-manual/user-manual.pdf \
		${PREFIX}/share/doc/ocp-build/

.include <bsd.port.mk>
