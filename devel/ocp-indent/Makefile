# $OpenBSD: $

COMMENT =	A simple tool to indent OCaml programs
CATEGORIES =	devel

V =		1.4.2
GH_ACCOUNT =	OCamlPro
GH_PROJECT =	ocp-indent
GH_TAGNAME =	${V}
GH_COMMIT =	3837f33adcb8d05f4aac7481be769781ceeff69a
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	${DISTNAME}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# GPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		devel/ocaml-cmdliner \
			lang/ocaml-camlp4 \
			sysutils/ocp-build>=1.99 \
			sysutils/opam

CONFIGURE_STYLE =	gnu dest
USE_GMAKE =		yes

ALL_TARGET =	man

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	native
.else
ALL_TARGET +=	byte
.endif

VIMDIR=share/vim/vim74


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
	${INSTALL_DATA_DIR} ${PREFIX}/${VIMDIR}
	mv ${PREFIX}/share/vim/syntax ${PREFIX}/${VIMDIR}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${GH_PROJECT}
	${INSTALL_DATA} \
		${WRKDIST}/{README.md,CHANGELOG} \
		${WRKDIST}/tools/tuareg-indent \
		${PREFIX}/share/doc/${GH_PROJECT}/


.include <bsd.port.mk>
