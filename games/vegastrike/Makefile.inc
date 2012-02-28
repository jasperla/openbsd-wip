# $OpenBSD$

V =			0.5.0

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		http://vegastrike.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vegastrike/}
EXTRACT_SUFX =		.tar.bz2

WRKDIST =		${WRKDIR}/vegastrike-${V}

NO_REGRESS =		Yes
