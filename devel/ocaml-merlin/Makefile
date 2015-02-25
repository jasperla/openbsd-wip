# $OpenBSD$

COMMENT =	coding assistant for editing OCaml code
CATEGORIES =	devel

V =		2.1.1
GH_ACCOUNT =	the-lambda-church
GH_PROJECT =	merlin
GH_TAGNAME =	v${V}
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-merlin-${V}

HOMEPAGE =	https://github.com/the-lambda-church/merlin

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		editors/vim \
			devel/ocaml-yojson \
			sysutils/findlib

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--vimdir ${LOCALBASE}/share/vim/vimfiles/after


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-merlin
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGELOG,*.md} \
		${PREFIX}/share/doc/ocaml-merlin/
	vim	--cmd helptags\ ${PREFIX}/share/vim/vimfiles/after/doc/ \
		--cmd q
	mv	${PREFIX}/share/vim/vimfiles/after/doc \
		${PREFIX}/share/vim/vimfiles/
	sort -c	${PREFIX}/share/vim/vimfiles/doc/tags
	mv	${PREFIX}/share/vim/vimfiles/doc/tags \
		${PREFIX}/share/vim/vimfiles/doc/ocaml-merlin.tags


.include <bsd.port.mk>
