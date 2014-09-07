# $OpenBSD$

COMMENT =		regular expression library for OCaml
CATEGORIES =		devel

V =		2.0.0
GH_ACCOUNT =	the-lambda-church
GH_PROJECT =	merlin
GH_TAGNAME =	merlin2
GH_COMMIT =	38e39140bae729604698066231f60eee8323c028
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-merlin-${V}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		editors/vim \
			devel/ocaml-yojson \
			sysutils/findlib

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--vimdir ${LOCALBASE}/share/vim/vimfiles


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-merlin
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGELOG,*.md} \
		${PREFIX}/share/doc/ocaml-merlin/
	vim	--cmd helptags\ ${PREFIX}/share/vim/vimfiles/doc/ \
		--cmd q
	sort -c	${PREFIX}/share/vim/vimfiles/doc/tags
	mv	${PREFIX}/share/vim/vimfiles/doc/tags \
		${PREFIX}/share/vim/vimfiles/doc/ocaml-merlin.tags


.include <bsd.port.mk>
