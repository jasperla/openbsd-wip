# $OpenBSD$

COMMENT =		high-performance torrent tracker

DISTNAME =		opentracker-20110401

CATEGORIES =		net

HOMEPAGE =		http://erdgeist.org/arts/software/opentracker/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Beerware; linking exception for libowfat
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pthread z

#MASTER_SITES =		???

BUILD_DEPENDS =		devel/libowfat	

WRKDIST =		${WRKDIR}/opentracker

ALL_TARGET =		opentracker

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opentracker
	${INSTALL_DATA} ${WRKSRC}/opentracker.conf.sample \
		${PREFIX}/share/examples/opentracker/opentracker.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opentracker
.	for _f in README README_v6
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/opentracker
.	endfor

.include <bsd.port.mk>
