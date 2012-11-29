# $OpenBSD$

CATEGORIES =	graphics print
COMMENT =	Qt-based barcode abstraction library
VERSION =	1.0
DISTNAME =	prison-${VERSION}
REVISION =	1
HOMEPAGE =	http://projects.kde.org/prison

SHARED_LIBS =	prison			0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/prison/${VERSION}/src/}
EXTRACT_SUFX =	.tar.gz

# BSDL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	x11/kde4
MODKDE4_USE =

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode

WANTLIB =	c dmtx lib/qt4/QtGui m qrencode stdc++

post-patch:
	${SUBST_CMD} ${WRKSRC}/lib/prison/PrisonConfig.cmake.in

.include <bsd.port.mk>
