# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:10 espie Exp $

COMMENT=		proof assistant based on a typed lambda calculus

DISTNAME=		coq-8.4
CATEGORIES=		math
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pauillac.inria.fr/~herbelin/coq/distrib/V8.4/files/
MASTER_SITES0=		${MASTER_SITES:S@$@doc/@}
MASTER_SITES1=		http://coq.inria.fr/distrib/V8.4beta2/
MASTER_SITES2=		http://coq.inria.fr/ps/
MASTER_SITES3=		ftp://quatramaran.ens.fr/pub/espie/coq/
DISTFILES=		${DISTNAME}.tar.gz \
			doc-html-20040711.tar.gz:3 \
			Changes.html:0 \
			Reference-Manual-all.ps.gz:0 \
			library.tar.gz:1 \
			RecTutorial.v.ps:2

DIST_SUBDIR=		coq
EXTRACT_ONLY=		${DISTNAME}.tar.gz \
			doc-html-20040711.tar.gz \
			library.tar.gz  \

DESTDIRNAME=		COQINSTALLPREFIX

RUN_DEPENDS =		lang/ocaml x11/lablgtk2
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

COQ_DOCHTMLFILES=       Changes.html
COQ_DOCPSFILES=         RecTutorial.v.ps Reference-Manual-all.ps.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/html/library
	@${INSTALL_DATA} ${WRKDIR}/coq-docs-html/* ${PREFIX}/share/doc/coq/html
	@${INSTALL_DATA} ${WRKDIR}/library/* ${PREFIX}/share/doc/coq/html/library
	@for ff in ${COQ_DOCHTMLFILES} ; do \
	  ${INSTALL_DATA} ${FULLDISTDIR}/$${ff} ${PREFIX}/share/doc/coq/html ; \
	done
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/ps
	@for ff in ${COQ_DOCPSFILES} ; do \
	  ${INSTALL_DATA} ${FULLDISTDIR}/$${ff} ${PREFIX}/share/doc/coq/ps ; \
	done

.include <bsd.port.mk>
