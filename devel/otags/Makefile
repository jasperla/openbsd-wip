# $OpenBSD: Makefile,v 1.11 2012/12/04 06:55:30 chrisz Exp $

COMMENT=	Otags Reloaded: Emacs and vi Tag Generation for OCaml
CATEGORIES=	devel

DISTNAME=	otags-4.01.1
MASTER_SITES=	http://askra.de/software/otags/

MAINTAINER=	Christopher Zimmermann <madroach@gmerlin.de>
HOMEPAGE=	http://askra.de/software/otags/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

BUILD_DEPENDS=  sysutils/findlib \
		lang/ocaml-camlp4

#NO_TEST= 	Yes
ALL_TARGET=	all
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--mandir ${PREFIX}/man
USE_GMAKE=	yes

post-install:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	  -C ${WRKSRC}/contrib ${INSTALL_TARGET}



.include <bsd.port.mk>
