COMMENT =		next neneration GoldenDict
CATEGORIES =		textproc education x11

DIST_TUPLE =		github	xiaoyifang	goldendict-ng	\
				v23.09.29-MoonCake.7f0f8778	. # GPLv3+
PKGNAME =		${DISTNAME:C/-[[:alnum:].]*$//}

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

# XXX not ported yet
LIB_DEPENDS =		x11/qt6/qtwebengine

.include <bsd.port.mk>
