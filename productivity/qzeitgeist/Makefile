# $OpenBSD$
# Slightly based on FreeBSD port

COMMENT =		Qt wrapper for Zeitgeist, event logging framework

DISTNAME =		QtZeitgeist-0.7.0
REVISION =		0

SHARED_LIBS =		qzeitgeist	0.0

CATEGORIES =		productivity devel x11 x11/qt4

HOMEPAGE =		http://zeitgeist-project.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		lib/qt4/QtDBus lib/qt4/QtTest lib/qt4/QtXml m stdc++

MASTER_SITES =		http://releases.zeitgeist-project.com/qzeitgeist/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4
BUILD_DEPENDS =		productivity/zeitgeist
RUN_DEPENDS =		productivity/zeitgeist
SEPARATE_BUILD =	simple
WRKDIST =		${WRKDIR}/${DISTNAME}-Source
NO_REGRESS =		Yes

.include <bsd.port.mk>
