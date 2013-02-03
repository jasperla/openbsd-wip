# $OpenBSD$

COMMENT =		non-linear video editor for KDE
VERSION =		0.9.4
DISTNAME =		kdenlive-${VERSION}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.kdenlive.org/
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3 knotifyconfig krossui nepomuk qjson
WANTLIB += solid soprano
WANTLIB += mlt mlt++

MASTER_SITES =		${MASTER_SITE_KDE:=stable/kdenlive/${VERSION}/src/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

LIB_DEPENDS =		devel/qjson \
			multimedia/mlt,-main
RUN_DEPENDS =		multimedia/mlt,-gpl2

# Fails to compile with enabled visibility
CONFIGURE_ARGS =	-D__KDE_HAVE_GCC_VISIBILITY=0

.include <bsd.port.mk>
