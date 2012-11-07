# $OpenBSD$
USE_SYSTRACE = 		Yes

COMMENT = 		simple nixie tube digits clock

DISTNAME = 		nixieclock-1.51

CATEGORIES = 		x11

HOMEPAGE = 		http://seriss.com/people/erco/unixtools/nixieclock/

MAINTAINER = 		OpenBSD ports <ports@openbsd.org>

MASTER_SITES = 		${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB = 		X11 Xau Xdmcp Xext c fltk fltk_images jpeg m png stdc++ z

LIB_DEPENDS=	x11/fltk

USE_X11 = 		Yes
USE_GMAKE = 	Yes

WRKDIST = 		${WRKDIR}/nixieclock

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nixieclock \
		${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/nixie-text-viewer \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/docs/nixieclock.6 \
		${PREFIX}/man/man6

.include <bsd.port.mk>
