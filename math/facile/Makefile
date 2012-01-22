# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		integer constraint programming library
DISTNAME =		facile-1.1
CATEGORIES =		math devel
HOMEPAGE =		http://www.recherche.enac.fr/log/facile/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}distrib/

MODULES =		lang/ocaml
USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--faciledir '$${OCAMLFIND_DESTDIR}/../facile'

ALL_TARGET =		compile
REGRESS_TARGET =	check

.include <bsd.port.mk>
