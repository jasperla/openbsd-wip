# $OpenBSD: $

COMMENT =	an OCaml bytecode cleaner
CATEGORIES =	devel

DISTNAME =	ocamlclean-1.9
EXTRACT_SUFX =	.tar.bz2

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://www.algo-prog.info/ocapic/web/lib/exe/fetch.php?media=ocamlclean-1.9.tar.bz2&dummy=/

HOMEPAGE =	http://www.algo-prog.info/ocapic/web/index.php?id=OCamlClean
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# CeCILL
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	-destdir ${DESTDIR} -prefix ${PREFIX}

USE_GMAKE =		Yes
MAKE_ENV =		MAKE=${GMAKE}


.include <bsd.port.mk>
