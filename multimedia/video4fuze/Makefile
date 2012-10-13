# $OpenBSD$

COMMENT =		put videos on the Sansa Fuze

V =			0.6
DISTNAME =		video4fuze-$V

SUBST_VARS +=		V

CATEGORIES =		multimedia

HOMEPAGE =		http://code.google.com/p/video4fuze/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://video4fuze.googlecode.com/files/

MODULES =		lang/python
BUILD_DEPENDS =		devel/desktop-file-utils
RUN_DEPENDS =		x11/mplayer \
			x11/py-qt4

NO_BUILD =		Yes
NO_REGRESS =		Yes

pre-install:
	${SUBST_CMD} ${WRKSRC}/dist/fuze ${WRKSRC}/dist/video4fuze

.include <bsd.port.mk>
