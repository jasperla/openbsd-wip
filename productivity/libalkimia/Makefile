# $OpenBSD: Makefile,v 1.7 2017/07/27 10:05:20 sthen Exp $
COMMENT =		common classes for finance KDE 4 apps
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
V =			7.0.2
DISTNAME =		alkimia-$V
PKGNMAE =		libalkimia-$V

SHARED_LIBS +=  alkimia5                  0.0 # 7.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes


MASTER_SITES =		${MASTER_SITE_KDE:=/stable/alkimia/$V/}
EXTRACT_SUFX ?=		.tar.xz

MODULES =		devel/kf5

LIB_DEPENDS =		devel/gmp

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

.include <bsd.port.mk>
