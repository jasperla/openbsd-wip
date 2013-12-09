# $OpenBSD$

CATEGORIES =		x11
COMMENT =		x2go qt4 client
VERSION =		3.99.2.1
PKGNAME =		x2goclient-${VERSION}
DISTNAME =		x2goclient-${VERSION}
REVISION =		0
HOMEPAGE =		http://www.x2go.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		http://code.x2go.org/releases/source/x2goclient/

WANTLIB =  ICE SM X11 Xext Xi Xinerama Xpm Xrender fontconfig freetype
WANTLIB += c cups ldap m pthread ssh stdc++
WANTLIB += lib/qt4/QtCore lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg

LIB_DEPENDS =		x11/nx/nxproxy \
			security/libssh \
			x11/qt4 \
			databases/openldap \
			print/cups

USE_GMAKE =		Yes

BUILD__DEPENDS =	x11/nx/nxproxy \
			security/libssh \
			x11/qt4 \
			databases/openldap \
			print/cups

WRKDIST=		${WRKDIR}/x2goclient_${VERSION}

pre-configure:
	find ${WRKSRC} -type f -iname "*.cpp" -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_OPENBSD,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;

	find ${WRKSRC} -type f -iname "*.h" -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_OPENBSD,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;

do-configure:
	cd ${WRKSRC} && qmake4 x2goclient.pro

do-install:
	${INSTALL} ${WRKSRC}/x2goclient ${PREFIX}/bin

.include <bsd.port.mk>
