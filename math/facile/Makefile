# $OpenBSD$

COMMENT =		integer constraint programming library
DISTNAME =		facile-1.1
CATEGORIES =		math devel
HOMEPAGE =		http://www.recherche.enac.fr/log/facile/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}distrib/

MODULES =		lang/ocaml
USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--faciledir '$${OCAMLFIND_DESTDIR}/../facile'

ALL_TARGET =		compile
TEST_TARGET =		check

.include <bsd.port.mk>
