# $OpenBSD$

COMMENT =	KDE calendar access library
DISTNAME =	kcalcore-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5CalendarCore           0.0 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss m

BUILD_DEPENDS +=	devel/bison

RUN_DEPENDS +=	devel/bison

LIB_DEPENDS +=	textproc/libical

.include <bsd.port.mk>
