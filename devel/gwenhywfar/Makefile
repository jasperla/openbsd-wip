# $OpenBSD: Makefile,v 1.20 2017/11/21 00:12:59 naddy Exp $

COMMENT=	helper library for networking and security applications

# update the "release=XXX" in DISTFILES, not just DISTNAME
DISTNAME=	gwenhywfar-4.20.0
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=01\&release=208\&file=02\&dummy=1}

SHARED_LIBS +=	gwenhywfar           1.3      # 73.1
SHARED_LIBS +=	gwengui-gtk2         0.0      # unknown
SHARED_LIBS +=	gwengui-cpp          0.0      # unknown

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de/sites/download/download.php?package=01&release=208&file=02&dummy=1

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes


MASTER_SITES=	https://www.aquamaniac.de/sites/download/

MODULES=		x11/qt5

BUILD_DEPENDS=		devel/gettext-tools

LIB_DEPENDS=		graphics/png \
			security/libgcrypt \
			security/gnutls \
			x11/gtk+2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-guis="gtk2 qt5" \
			--with-qt5-includes=${MODQT5_INCDIR} \
			qt5_libs="-L${MODQT5_LIBDIR} -Wl,-rpath-link,${X11BASE}/lib -lQtGui -lQtCore"
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

#pre-configure:
#	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
#	             ${WRKSRC}/gui/qt4/gwengui-qt4-config.cmake.in

.include <bsd.port.mk>
