# $OpenBSD: $

COMMENT =	A simple tool to indent OCaml programs
CATEGORIES =	devel

V =		1.5
GH_ACCOUNT =	OCamlPro
GH_PROJECT =	ocp-indent
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	${DISTNAME}

HOMEPAGE =	https://github.com/OCamlPro/ocp-indent
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# GPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib \
			lang/ocaml-camlp4 \
			devel/ocaml-cmdliner

MAKE_FILE =		Makefile.simple

.include <bsd.port.arch.mk>

do-regress:
	env -i WRKDIST=${WRKDIST} WRKBUILD=${WRKBUILD} ${WRKDIST}/tests/test.sh

post-install:
.if ${PROPERTIES:Mocaml_native}
	ln -s ${LOCALBASE}/lib/ocaml/ocp-indent/ocp-indent.native ${PREFIX}/bin/ocp-indent
.else
	ln -s ${LOCALBASE}/lib/ocaml/ocp-indent/ocp-indent.byte ${PREFIX}/bin/ocp-indent
.endif
	$(INSTALL_MAN) ${WRKDIST}/ocp-indent.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/indent
	${INSTALL_DATA} ${WRKDIST}/tools/ocp-indent.vim ${PREFIX}/share/vim/vimfiles/indent/ocaml.vim
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKDIST}/tools/ocp-indent.el ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${GH_PROJECT}
	${INSTALL_DATA} \
		${WRKDIST}/{README.md,CHANGELOG} \
		${WRKDIST}/tools/tuareg-indent \
		${PREFIX}/share/doc/${GH_PROJECT}/


.include <bsd.port.mk>
