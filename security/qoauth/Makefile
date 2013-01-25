# $OpenBSD$

SHARED_ONLY =	Yes
COMMENT =	OAuth support library for Qt-based applications
V =		1.0.1
DISTNAME =	qoauth-${V}-src
PKGNAME =	${DISTNAME:C/-src//}
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/ayoy/qoauth
REVISION =	1

SHARED_LIBS =	qoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		lib/qt4/QtNetwork m pthread qca2 stdc++

MASTER_SITES =		http://files.ayoy.net/qoauth/$V/
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
LIB_DEPENDS =		security/qca2

MAKE_FLAGS =		LIBqoauth_VERSION=${LIBqoauth_VERSION}
DESTDIRNAME =		INSTALL_ROOT

REGRESS_TARGET =		check
REGRESS_IS_INTERACTIVE =	X11

do-configure:
	cd ${WRKDIST} && ${LOCALBASE}/bin/qmake4 \
		PREFIX=${PREFIX} \
		qoauth.pro

post-install:
	cd ${WRKBUILD}/src && make static-install

.include <bsd.port.mk>
