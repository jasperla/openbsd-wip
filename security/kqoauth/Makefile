# $OpenBSD$

SHARED_ONLY =	Yes
COMMENT =	OAuth support library for Qt-based applications
V =		0.97
DISTNAME =	${V}
PKGNAME =	kqouath-${V}
CATEGORIES =	security devel
HOMEPAGE =	https://github.com/kypeli/kQOAuth

SHARED_LIBS =	kqoauth		0.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += m pthread stdc++
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork

MASTER_SITES =	${HOMEPAGE}/archive/
DIST_SUBDIR =	kqoauth
WRKDIST =	${WRKDIR}/kQOAuth-${V}

MODULES =	x11/qt4

MAKE_FLAGS =	LIBkqoauth_VERSION=${LIBkqoauth_VERSION}
DESTDIRNAME =	INSTALL_ROOT

TEST_TARGET =	check
TEST_NAMES =	ft_kqoauth ut_kqoauth

do-configure:
	cd ${WRKDIST} && ${LOCALBASE}/bin/qmake4 \
		PREFIX=${PREFIX} \
		kqoauth.pro

post-install:
	cd ${WRKBUILD}/src && make static-install

do-test:
.for _t in ${TEST_NAMES}
	cd ${WRKBUILD} && \
	    LD_PRELOAD=`pwd`/lib/libkqoauth.so.${LIBkqoauth_VERSION} \
	    ./tests/${_t}/${_t}
.endfor

.include <bsd.port.mk>
