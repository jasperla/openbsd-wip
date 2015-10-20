# $OpenBSD$

COMMENT=	GUI front-end for John the Ripper

V=		2.2
DISTNAME=	johnny-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

CATEGORIES=	security x11

HOMEPAGE=	http://openwall.info/wiki/john/johnny

# main code: BSD
# graphics:  resources/icons/README.icons
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Widgets c m pthread

MASTER_SITES=	https://github.com/shinnok/johnny/archive/

MODULES=	x11/qt5

RUN_DEPENDS=	john-*|john-jumbo-*:security/john-jumbo

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/qmake-qt5

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/johnny ${PREFIX}/bin

.include <bsd.port.mk>
