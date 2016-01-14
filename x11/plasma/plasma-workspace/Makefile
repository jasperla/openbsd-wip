# $OpenBSD$

COMMENT =		foo something
DISTNAME =		plasma-workspace-${VERSION}

#SHARED_LIBS =		KF5Foo		0.0

WANTLIB =		

LIB_DEPENDS =		devel/kf5/kidletime \
			devel/kf5/kdbusaddons \
			devel/kf5/kjsembed \
			devel/kf5/knotifyconfig \
			devel/kf5/kxmlrpcclient \
			x11/plasma/ksysguard

CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

.include <bsd.port.mk>
