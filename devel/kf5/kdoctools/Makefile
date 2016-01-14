# $OpenBSD$

COMMENT =	create documentation from DocBook
DISTNAME =	kdoctools-${VERSION}

WANTLIB +=	KF5Archive Qt5Core c exslt m pthread xml2 xslt

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/kf5/ki18n
RUN_DEPENDS =	devel/kf5/ki18n
LIB_DEPENDS =	devel/kf5/karchive

.include <bsd.port.mk>
