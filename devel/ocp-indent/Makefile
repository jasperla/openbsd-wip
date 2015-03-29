# $OpenBSD: $

COMMENT =	A simple tool to indent OCaml programs
CATEGORIES =	devel

V =		1.4.2b
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

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib \
			lang/ocaml-camlp4 \
			sysutils/ocp-build>=1.99 \
			sysutils/opam \
			devel/ocaml-cmdliner

CONFIGURE_STYLE =	gnu dest
USE_GMAKE =		yes

ALL_TARGET =	man

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	native
.else
ALL_TARGET +=	byte
.endif


.if ! ${PROPERTIES:Mocaml_native}
post-extract:
	sed -nE \
		-e 's/ocp-indent.asm/ocp-indent.byte/' \
		-e '/\.cmxa|\.a[[:>:]]/!p' \
		${WRKSRC}/ocp-indent.install >${WRKSRC}/ocp-indent.installbyte
	mv ${WRKSRC}/ocp-indent.installbyte ${WRKSRC}/ocp-indent.install
.endif

do-regress:
	env -i WRKDIST=${WRKDIST} WRKBUILD=${WRKBUILD} ${WRKDIST}/tests/test.sh

post-install:
	mv ${PREFIX}/lib/${GH_PROJECT} ${PREFIX}/lib/ocaml/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/indent
	rm -R ${PREFIX}/share/vim/syntax
	${INSTALL_DATA} ${FILESDIR}/ocaml.vim ${PREFIX}/share/vim/vimfiles/indent/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${GH_PROJECT}
	${INSTALL_DATA} \
		${WRKDIST}/{README.md,CHANGELOG} \
		${WRKDIST}/tools/tuareg-indent \
		${PREFIX}/share/doc/${GH_PROJECT}/


.include <bsd.port.mk>
