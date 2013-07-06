# $OpenBSD: Makefile.template,v 1.66 2013/06/04 22:58:11 sthen Exp $

COMMENT =		enhanced OCaml toplevel
DISTNAME =		utop-1.5

CATEGORIES =		devel
HOMEPAGE =		https://forge.ocamlcore.org/projects/utop/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://forge.ocamlcore.org/frs/download.php/1169/

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/ocaml-lambda-term \
			sysutils/findlib
RUN_DEPENDS =		${BUILD_DEPENDS}

USE_GMAKE =		Yes

# silence a warning
pre-build:
	rm ${WRKBUILD}/src/lib/errors.mli

.include <bsd.port.mk>
