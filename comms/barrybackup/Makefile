# $OpenBSD: Makefile.template,v 1.49 2006/10/21 12:59:35 espie Exp $

COMMENT =		GUI for USB BlackBerry tool

# Uses same distfile as barry itself, but can't be built easily from within
# the same port due to directory structure; easier to make distinct port.
WRKDIST=		${WRKDIR}/${DISTNAME}/gui

V=					0.14
DISTNAME=			barry-${V}
PKGNAME=			barrybackup-${V}
EXTRACT_SUFX=		.tar.bz2
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=barry/}
SUBST_VARS+=		${V}

CATEGORIES=		comms

HOMEPAGE=		http://www.netdirect.ca/software/packages/barry/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pthread stdc++ m c

BUILD_DEPENDS=		comms/barry \
					archivers/libtar \
					devel/libglademm
# XXX gtk
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	gnu
USE_GMAKE=			Yes
USE_LIBTOOL=		Yes
NO_REGRESS=			Yes

.include <bsd.port.mk>
