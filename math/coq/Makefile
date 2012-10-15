# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:10 espie Exp $

COMMENT=		proof assistant based on a typed lambda calculus

DISTNAME=		coq-8.4
CATEGORIES=		math
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

## LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pauillac.inria.fr/~herbelin/coq/distrib/V8.4/files/
DISTFILES=		${DISTNAME}.tar.gz

DESTDIRNAME=		COQINSTALLPREFIX

RUN_DEPENDS =		x11/lablgtk2
BUILD_DEPENDS =		x11/lablgtk2

WANTLIB =		GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
			Xinerama Xrandr Xrender atk-1.0 c cairo expat \
			fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
			glib-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
			pthread pthread-stubs xcb xcb-render xcb-shm z

USE_GMAKE=		Yes
USE_GROFF =		Yes

MODULES=		lang/ocaml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		-prefix ${PREFIX} \
			-emacslib ${PREFIX}/share/emacs/site-lisp \
			-usecamlp4 \
			-makecmd ${GMAKE}
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
CONFIGURE_ARGS +=	-opt
.else
CONFIGURE_ARGS +=	-byteonly
.endif

ALL_TARGET=		world
REGRESS_TARGET=		check


post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,COPYRIGHT,CREDITS,CHANGES,COMPATIBILITY} \
		${PREFIX}/share/doc/coq/


.include <bsd.port.mk>
