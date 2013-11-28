# $OpenBSD$

COMMENT=	mount SMB shares from userland via FUSE

DISTNAME=	usmb-20100212

CATEGORIES=	sysutils

HOMEPAGE=	http://ametros.net/code.html

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c fuse glib-2.0 smbclient xml2

MASTER_SITES=	http://ametros.net/downloads/

MODULES=	devel/gettext
BUILD_DEPENDS=	textproc/gsed
LIB_DEPENDS=	devel/glib2 \
		net/samba \
		textproc/libxml

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-samba=${LOCALBASE}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/usmb ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/usmb/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/usmb/
	${INSTALL_DATA} ${WRKSRC}/usmb.conf ${PREFIX}/share/examples/usmb/

.include <bsd.port.mk>
