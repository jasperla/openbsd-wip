# $OpenBSD: Makefile,v 1.3 2012/07/18 08:04:11 sthen Exp $

COMMENT =	OCaml perl-compatible regexp library
CATEGORIES =	devel textproc

V =		7.0.2
DISTNAME =	pcre-ocaml-$V
PKGNAME =	ocaml-pcre-$V

HOMEPAGE =	http://ocaml.info/home/ocaml_sources.html

# GPLv2+
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

MASTER_SITES =	https://bitbucket.org/mmottl/pcre-ocaml/downloads/

RUN_DEPENDS =	sysutils/findlib
BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	devel/pcre
WANTLIB =	pcre

NO_REGRESS =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--destdir ${WRKINST} --override pkg_name ocaml-pcre

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/pcre
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/stublibs
	ln -s ../stublibs ${PREFIX}/lib/ocaml/site-lib/

.include <bsd.port.mk>
