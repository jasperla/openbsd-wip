# $OpenBSD $

# XXX TODO - flavor for TCL, Java, etc.

COMMENT=		cad package from US Army Ballistics Research Lab

DISTNAME=		brlcad-7.10.4

CATEGORIES=		cad

HOMEPAGE=		http://www.brlcad.org/

# Mixture of BSD and PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=brlcad/}

MODULES=			java
MODJAVA_VER=		1.5+

RUN_DEPENDS=		lang/tcl/8.4 \
					x11/tk/8.4 \
					graphics/png

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu


.include <bsd.port.mk>
