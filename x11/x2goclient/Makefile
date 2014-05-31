# $OpenBSD$

CATEGORIES =	x11
COMMENT =	Qt client for the X2Go system
VERSION =	4.0.2.0
PKGNAME =	x2goclient-${VERSION}
DISTNAME =	x2goclient-${VERSION}
HOMEPAGE =	http://www.x2go.org

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xpm Xrender c fontconfig
WANTLIB += freetype m pthread stdc++ lib/qt4/QtCore lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg

MASTER_SITES=	http://code.x2go.org/releases/source/x2goclient/

LIB_DEPENDS =	x11/nx/nxcomp \
		x11/nx/nxproxy \
		security/libssh \
		x11/qt4 \
		databases/openldap \
		print/cups

BUILD_DEPENDS =	x11/nx/nxcomp \
		x11/nx/nxproxy \
		security/libssh \
		x11/qt4 \
		databases/openldap \
		print/cups

pre-configure:
	find ${WRKSRC} -type f -iname "*.cpp"  -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
	find ${WRKSRC} -type f -iname "*.h" -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
do-configure:
	cd ${WRKSRC} && lrelease x2goclient.pro && qmake4 x2goclient.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/x2goclient ${PREFIX}/bin

.include <bsd.port.mk>
