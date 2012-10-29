# $OpenBSD: $

COMMENT =	improved toplevel for OCaml
CATEGORIES =	lang

DISTNAME =	utop-1.2.1

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/951/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		devel/ocaml-lwt \
			devel/ocaml-camomile \
			devel/ocaml-lambda-term
RUN_DEPENDS +=		${BUILD_DEPENDS}

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES,README} \
		${PREFIX}/share/doc/utop/


.include <bsd.port.mk>
