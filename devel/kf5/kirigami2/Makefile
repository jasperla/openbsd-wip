# $OpenBSD:$

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
