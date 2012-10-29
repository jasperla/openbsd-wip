# $OpenBSD: Makefile,v 1.3 2012/07/18 08:04:11 sthen Exp $

COMMENT =	parser, printer and builder for xml. (x)html, svg
CATEGORIES =	www

DISTNAME =	tyxml-2.1
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://ocsigen.org/download/

HOMEPAGE =	http://ocsigen.org/tyxml/


# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-net
RUN_DEPENDS =	devel/ocaml-net

USE_GMAKE =	Yes

ALL_TARGET =	all doc

NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-tyxml/api
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES,README} \
		${PREFIX}/share/doc/ocaml-tyxml/
	${INSTALL_DATA} \
		${WRKDIST}/doc/api-html/* \
		${PREFIX}/share/doc/ocaml-tyxml/api/


.include <bsd.port.mk>
