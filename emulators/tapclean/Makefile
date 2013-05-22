# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		Commodore tape image cleaning utility
DISTNAME =		tapclean-20130522
CATEGORIES =		emulators

HOMEPAGE =		http://sourceforge.net/projects/tapclean/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m

# the software authors do not make release tarballs
MASTER_SITES =		http://theunixzoo.co.uk/distfiles/

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/tapclean
WRKBUILD =		${WRKDIST}/src

USE_GMAKE =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tapclean ${PREFIX}/bin

.include <bsd.port.mk>
