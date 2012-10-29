# $OpenBSD: Makefile.template,v 1.55 2008/08/23 15:28:00 ajacoutot Exp $

COMMENT =	KDE TV guide

DISTNAME =	maxemumtvguide-7.3.2
CATEGORIES =	multimedia

HOMEPAGE =	http://mtvg.sourceforge.net/

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += 	ICE SM X11 Xext Xrender c \
		Xfixes Xt expat fontconfig freetype \
		xcb idn m pthread stdc++ util z \
		jpeg>=62 art_lgpl_2 png DCOP kdecore kdefx \
		kdesu kdeui kio kwalletclient

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mtvg/}

MODULES =	devel/gettext x11/qt3

LIB_DEPENDS =	graphics/jpeg \
		graphics/libart \
		graphics/png \
		x11/kde/libs3

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

# For systrace
# /usr/local/qt3/lib/etc/settings write access required
# Shift home directory to in build.
PORTHOME = 	${WRKDIR}
CONFIGURE_ENV +=	HOME=${PORTHOME}
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extra-libs=/usr/local/lib \
			--with-qt-dir=/usr/local/lib/qt3

AUTOCONF_VERSION =	2.60

.include <bsd.port.mk>
