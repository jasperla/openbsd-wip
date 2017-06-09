# $OpenBSD$

COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

KDE5 =		Yes

SHARED_LIBS +=  KF5Mime                   0.0 # 5.5

WANTLIB += KF5Codecs KF5I18n Qt5Core m

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS +=	devel/gettext

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/ki18n

.include <bsd.port.mk>
