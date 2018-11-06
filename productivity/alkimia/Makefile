# $OpenBSD: Makefile,v 1.7 2017/07/27 10:05:20 sthen Exp $
COMMENT =		common classes for finance KDE 4 apps
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
V =			7.0.1
DISTNAME =		alkimia-$V

SHARED_LIBS =		alkimia5	0.0 # 7.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  Qt5Core Qt5DBus gmp m
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_KDE:=/stable/alkimia/$V/src/}

MODULES =		devel/kf5

LIB_DEPENDS =		devel/gmp

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_MPIR:Bool=Yes
CXXFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

do-test:
	cd ${WRKBUILD} && ./libalkimia/alkcompanytest

.include <bsd.port.mk>
