# $Id: Makefile,v 1.1 2012/11/02 19:10:54 dhn Exp $

COMMENT =	Search and play YouTube videos streaming in MPlayer

VERSION =	3.0.0
DISTNAME =	youtube-viewer-${VERSION}
CATEGORIES =	multimedia

HOMEPAGE =	http://trizen.googlecode.com/

MAINTAINER =	Dennis Herrmann <dhn@FreeBSD.org>

#GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}files/

WANTLIB =	perl
RUN_DEPENDS =	x11/mplayer \
		devel/p5-Data-Dump \
		devel/p5-Term-ReadKey \
		devel/p5-Term-ReadLine-Gnu \
		www/p5-XML-Fast \
		www/p5-LWP-UserAgent-Determined \
		www/p5-URI

WRKDIST =	${WRKDIR}/WWW-YoutubeViewer
NO_BUILD =	Yes
PKG_ARCH =	*

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/youtube-viewer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PERLDIR}/WWW
	${INSTALL_DATA} ${WRKSRC}/lib/WWW/YoutubeViewer.pm ${PERLDIR}/WWW/

.include <bsd.port.mk>
