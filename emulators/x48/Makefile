# $OpenBSD: Makefile,v 1.21 2010/10/24 21:17:49 ajacoutot Exp $
#

COMMENT=		HP48sx emulator

DISTNAME=		x48-0.6.3
CATEGORIES=		emulators

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext c ncurses readline util

MASTER_SITES=		${MASTER_SITE_BERLIOS:=x48/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LIBS="-lncurses -lutil"
CONFIGURE_ARGS+=	--with-appdefaultdir="${LOCALBASE}/lib/X11/app-defaults"

USE_GMAKE=		Yes

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/x48
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/x48/README-x48

.include <bsd.port.mk>
