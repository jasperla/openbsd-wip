# $OpenBSD: $

COMMENT =	build tool for OCaml
CATEGORIES =	sysutils

PKGNAME =	ocp-build-1.99.9-beta
DISTNAME =	ocp-build.1.99.9-beta

MASTER_SITES =	http://www.typerex.org/pub/ocp-build/

HOMEPAGE =	http://www.typerex.org/ocp-build.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# GPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		lang/ocaml-camlp4

CONFIGURE_STYLE =	gnu dest
USE_GMAKE =		yes

NO_TEST =		yes


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocp-build
	${INSTALL_DATA} \
		${WRKDIST}/{README.md,CHANGES} \
		${WRKDIST}/docs/user-manual/user-manual.pdf \
		${PREFIX}/share/doc/ocp-build/

.include <bsd.port.mk>
