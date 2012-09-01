# $OpenBSD: $

COMMENT =	improved toplevel for OCaml
CATEGORIES =	lang

DISTNAME =	camlp5-6.06
EXTRACT_SUFX =	.tgz
MASTER_SITES =	http://pauillac.inria.fr/~ddr/camlp5/distrib/src/

HOMEPAGE =	http://pauillac.inria.fr/~ddr/camlp5/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

RUN_DEPENDS +=		lang/ocaml

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	-prefix ${PREFIX} -transitional

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET =		world.opt
.else
ALL_TARGET =		world
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camlp5/html
	${INSTALL_DATA} \
		${WRKDIST}/doc/htmlp/* \
		${PREFIX}/share/doc/camlp5/html/
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES,README,DEVEL} \
		${PREFIX}/share/doc/camlp5/


.include <bsd.port.mk>
