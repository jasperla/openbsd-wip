# $OpenBSD: $

COMMENT =	build tool for OCaml
CATEGORIES =	sysutils

PKGNAME =	ocp-build-1.99.9-beta
DISTNAME =	ocp-build.1.99.8-beta

MASTER_SITES =	http://www.typerex.org/pub/ocp-build/

HOMEPAGE =	http://www.typerex.org/ocp-build.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

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
