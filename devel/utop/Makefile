# $OpenBSD: Makefile.template,v 1.66 2013/06/04 22:58:11 sthen Exp $

COMMENT =		enhanced OCaml toplevel
DISTNAME =		utop-1.5

CATEGORIES =		devel
HOMEPAGE =		https://forge.ocamlcore.org/projects/utop/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://forge.ocamlcore.org/frs/download.php/1169/

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--destdir ${WRKINST} --mandir ${LOCALBASE}/man --enable-tests

BUILD_DEPENDS =		devel/ocaml-lambda-term \
			sysutils/findlib
RUN_DEPENDS =		${BUILD_DEPENDS}

USE_GMAKE =		Yes

# --destdir is broken, work around it
#FAKE_ENV =		OCAMLFIND_DESTDIR=${PREFIX}
#do-install:
#	cd ${WRKBUILD} && ${FAKE_ENV} ./setup.exe -install

.include <bsd.port.mk>
