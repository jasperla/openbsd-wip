# $OpenBSD$

CATEGORIES =	graphics print x11/kde4
COMMENT =	Qt-based barcode abstraction library
VERSION =	1.0
DISTNAME =	prison-${VERSION}
REVISION =	0
HOMEPAGE =	http://projects.kde.org/prison

SHARED_LIBS +=	prison			0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/prison/${VERSION}/src/}

# BSDL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/cmake x11/qt4

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode

WANTLIB += c dmtx lib/qt4/QtGui m qrencode stdc++

SEPARATE_BUILD =	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/lib/prison/PrisonConfig.cmake.in

.include <bsd.port.mk>
