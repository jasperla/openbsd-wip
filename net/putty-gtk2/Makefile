# $OpenBSD: Makefile,v 1.2 2009/08/10 06:33:43 kili Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=	putty-0.60-2010-03-24
PKGNAME-main=	putty-0.60.20100324
PKGNAME-gui=	putty-gui-0.60.20100324
CATEGORIES=	net security

HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/putty/
MASTER_SITES=	http://spacehopper.org/mirrors/ \
		http://dukzcry.cc/hlam/distfiles/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
WRKBUILD=		${WRKSRC}/unix

MULTI_PACKAGES= 	-main -gui

WANTLIB=		c
WANTLIB-gui=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
			fontconfig freetype gio-2.0 glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 iconv intl m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png \
			pthread-stubs xcb z
LIB_DEPENDS-gui=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

pre-configure:
	cd ${WRKSRC} && ./mkfiles.pl

NO_REGRESS=	Yes

.include <bsd.port.mk>

# gcc4 is smarter !
.if ${COMPILER_VERSION:L:Mgcc4*}
CFLAGS += -Wno-error=address
.endif
