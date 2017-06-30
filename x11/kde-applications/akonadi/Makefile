# $OpenBSD$

COMMENT =	PIM Storage Service
DISTNAME =	akonadi-${VERSION}
CATEGORIES =	database

KDE5 =		Yes

MODULES +=	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons  \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/kcrash \
		devel/kf5/kdesignerplugin \
		devel/boost \
		textproc/libxslt \
		textproc/libxml \
		databases/sqlite

PORTHOME =	${WRKDIR}
.include <bsd.port.mk>
