# $OpenBSD: Makefile,v 1.3 2012/07/18 08:04:11 sthen Exp $

COMMENT =	OCaml perl-compatible regexp library
CATEGORIES =	devel textproc

V =		6.2.5
DISTNAME =	pcre-ocaml-$V
PKGNAME =	ocaml-pcre-$V
REVISION =	1

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

MAKE_FLAGS =	"NO_CUSTOM=y"

NO_REGRESS =	Yes
USE_GMAKE =	Yes

WRKSRC =	${WRKDIST}/lib

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/pcre
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/stublibs
	ln -s ../stublibs ${PREFIX}/lib/ocaml/site-lib/
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-pcre/html/
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/ocaml-pcre/
	${INSTALL_DATA} ${WRKDIST}/README.txt ${PREFIX}/share/doc/ocaml-pcre/
	${INSTALL_DATA} \
	    ${WRKDIST}/lib/doc/pcre/html/* \
	    ${PREFIX}/share/doc/ocaml-pcre/html/

.include <bsd.port.mk>

.if ${MODOCAML_NATIVE:L} == "yes"
ALL_TARGET =		htdoc byte-code-library native-code-library
INSTALL_TARGET =	libinstall
.else
ALL_TARGET =		htdoc byte-code-library
INSTALL_TARGET =	libinstall-byte-code
.endif
