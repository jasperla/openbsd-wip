# $OpenBSD$

COMMENT=		curses / ncurses bindings for OCaml

DISTNAME=		ocaml-curses-1.0.3
CATEGORIES=		devel

HOMEPAGE=		http://www.nongnu.org/ocaml-tmk/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://download.savannah.gnu.org/releases/ocaml-tmk/

WANTLIB += ncurses

MODULES=		lang/ocaml

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

REGRESS_TARGET=		test

.include <bsd.port.mk>
