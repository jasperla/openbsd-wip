# $OpenBSD: $

COMMENT =	improved toplevel for OCaml
CATEGORIES =	lang

DISTNAME =	utop-1.2.1

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/951/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS +=	sysutils/findlib

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--destdir ${WRKINST}

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml

.include <bsd.port.mk>
