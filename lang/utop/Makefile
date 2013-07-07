# $OpenBSD: $

COMMENT =		enhanced OCaml toplevel
DISTNAME =		utop-1.5
CATEGORIES =	lang

HOMEPAGE =		https://forge.ocamlcore.org/projects/utop/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://forge.ocamlcore.org/frs/download.php/1169/

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/ocaml-lambda-term
RUN_DEPENDS =		${BUILD_DEPENDS}

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/utop/

# silence a warning
pre-build:
	# already shipped by the OCaml package
	rm ${WRKBUILD}/src/lib/errors.mli

.include <bsd.port.mk>
