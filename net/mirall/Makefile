# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		owncloud sync client

DISTNAME =		mirall-1.4.2

SHARED_LIBS =		owncloudsync 0.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtDBus QtGui QtNetwork QtTest QtWebKit QtXml QtXmlPatterns
WANTLIB += X11 c kinotify m ocsync pthread sqlite3

MASTER_SITES =		http://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4 gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS = 	c++
MODGCC4_VERSION = 	4.8
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/libinotify \
			net/ocsync

CONFIGURE_ARGS +=	-DBUILD_TYPE=Release \
			-DCSYNC_INCLUDE_PATH=${LOCALBASE}/include/ocsync

NO_TEST =		Yes

.include <bsd.port.mk>
