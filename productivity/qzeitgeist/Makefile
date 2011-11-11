# $OpenBSD$
# Slightly based on FreeBSD port

COMMENT =		Qt wrapper for Zeitgeist, event logging framework

DISTNAME =		QtZeitgeist-0.7.0

SHARED_LIBS =		qzeitgeist	0.0

CATEGORIES =		productivity devel x11 x11/qt4

HOMEPAGE =		http://zeitgeist-project.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes | Reason if No
PERMIT_PACKAGE_FTP =	Yes | Reason if No
PERMIT_DISTFILES_CDROM =Yes | Reason if No
PERMIT_DISTFILES_FTP =	Yes | Reason if No

# "make port-lib-depends-check" can help
WANTLIB =		lib/qt4/QtDBus lib/qt4/QtTest lib/qt4/QtXml m stdc++

MASTER_SITES =		http://releases.zeitgeist-project.com/qzeitgeist/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4
BUILD_DEPENDS =		productivity/zeitgeist
RUN_DEPENDS =		productivity/zeitgeist
#REGRESS_DEPENDS =	???

SEPARATE_BUILD =	simple
WRKDIST =		${WRKDIR}/${DISTNAME}-Source

#USE_GROFF =		Yes

#REGRESS_IS_INTERACTIVE =	Yes

#NO_REGRESS =		Yes

#REGRESS_TARGET =	???

.include <bsd.port.mk>
