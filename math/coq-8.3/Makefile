# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:10 espie Exp $

COMMENT=		proof assistant based on a typed lambda calculus

DISTNAME=		coq-8.3pl4
CATEGORIES=		math
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

## LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://coq.inria.fr/distrib/V8.3pl4/files/
DISTFILES=		${DISTNAME}.tar.gz \

#DIST_SUBDIR=		coq
DESTDIRNAME=		COQINSTALLPREFIX

#BUILD_DEPENDS =		lang/camlp5
RUN_DEPENDS =		x11/lablgtk2
BUILD_DEPENDS =		x11/lablgtk2 lang/camlp5


WANTLIB=		c m pthread GL X11 Xcomposite Xcursor Xdamage \
			Xext Xfixes Xi Xinerama Xrandr Xrender expat\
			fontconfig freetype pixman-1 pthread-stubs \
			xcb xcb-render xcb-shm z

USE_GMAKE=		Yes
USE_GROFF =		Yes

MODULES=		lang/ocaml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		-prefix ${PREFIX} \
			-emacslib ${PREFIX}/share/emacs/site-lisp \
			-camlp5dir ${LOCALBASE}/lib/ocaml/camlp5
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
CONFIGURE_ARGS +=	-opt
.else
CONFIGURE_ARGS +=	-byteonly
.endif

ALL_TARGET=		world
REGRESS_TARGET=		check

.include <bsd.port.mk>
