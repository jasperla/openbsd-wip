# $OpenBSD $

COMMENT=           	simple cli tool for submitting .scrobbler.log to last.fm
VERSION=           	0.10
DISTNAME=          	qtscrob-0.10/src/cli
PKGNAME=           	scrobble-cli-${VERSION}
CATEGORIES=			audio

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qtscrob/}
DISTFILES=			qtscrob-${VERSION}.tar.bz2

HOMEPAGE=               http://qtscrob.sourceforge.net/

MAINTAINER=		 dukzcry <lomka@gero.in>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes 

WANTLIB=		ssl crypto z stdc++ m c intl

LIB_DEPENDS=		net/curl \
					devel/libidn \
					converters/libiconv

USE_X11=		No
USE_GMAKE=		Yes

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}
	${INSTALL_PROGRAM} ${WRKDIST}/scrobble-cli \
		${PREFIX}/bin

.include <bsd.port.mk>


