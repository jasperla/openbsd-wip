# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:12 espie Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

# also adapt MASTER_SITES when changing the version!
DISTNAME =	lambda-term-1.4
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/1136/

HOMEPAGE =	http://forge.ocamlcore.org/projects/lambda-term

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c ev m pthread charset

MODULES =	lang/ocaml converters/libiconv

BUILD_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
RUN_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
LIB_DEPENDS =	devel/libev

CONFIGURE_STYLE =	oasis

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{_oasis,myocamlbuild.ml,setup.ml}

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{CHANGES.md,LICENSE} \
		${PREFIX}/share/doc/ocaml-lambda-term/

.include <bsd.port.mk>
