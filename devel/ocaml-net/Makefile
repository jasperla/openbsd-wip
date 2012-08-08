# $OpenBSD: Makefile,v 1.1.1.1 2012/07/16 09:27:31 edd Exp $

COMMENT =	the Ocamlnet internet protocol foundation library
CATEGORIES =	devel www mail

V =		3.6
DISTNAME =	ocamlnet-${V}
PKGNAME =	ocaml-net-${V}

MASTER_SITES =	http://download.camlcity.org/download/
HOMEPAGE =	http://projects.camlcity.org/projects/ocamlnet.html

MAINTAINER =	Christopher Zimmermann <madroach@zakweb.de>

# Mostly zlib/png, http server module is GPL
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib
WANTLIB =	c curses m pthread

CONFIGURE_STYLE = simple
CONFIGURE_ARGS = -with-nethttpd

NO_REGRESS =	Yes
USE_GMAKE =	Yes

ALL_TARGET =	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt
.endif

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/stublibs

EXAMPLEDIR =	${PREFIX}/share/examples/ocaml-net
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocamlnet/html
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocamlnet/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/ocamlnet/
	${INSTALL_DATA} \
	    ${WRKSRC}/doc/html-main/* \
	    ${PREFIX}/share/doc/ocamlnet/html/
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cp -r ${WRKSRC}/examples/* ${EXAMPLEDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}

.include <bsd.port.mk>
