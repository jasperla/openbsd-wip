# $OpenBSD$

COMMENT =		CMake modules required by KDE5
DISTNAME =		extra-cmake-modules-${VERSION}
HOMEPAGE =		https://projects.kde.org/projects/kdesupport/extra-cmake-modules

WANTLIB- =

BUILD_DEPENDS =		textproc/py-sphinx

CONFIGURE_ARGS =	-DBUILD_QTHELP_DOCS=True

post-install:
	rm ${PREFIX}/share/ECM/kde-modules/*.orig

.include <bsd.port.mk>
