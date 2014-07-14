# $OpenBSD$

COMMENT =		non-linear video editor for KDE
VERSION =		0.9.8
DISTNAME =		kdenlive-${VERSION}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.kdenlive.org/
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3 knotifyconfig krossui nepomukcore qjson
WANTLIB += solid soprano
WANTLIB += mlt mlt++

MASTER_SITES =		${MASTER_SITE_KDE:=stable/kdenlive/${VERSION}/src/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4 devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			multimedia/mlt,-gpl2 \
			x11/gtk+2,-guic

LIB_DEPENDS =		devel/qjson \
			multimedia/mlt,-main

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2=Yes

# upstream bug, putting all l10n files at the same place
post-patch:
	cd ${WRKSRC}/po; for lc in */CMakeLists.txt; do \
		l=$${lc%/CMakeLists.txt}; \
		perl -pi -e "s,\(fr ,\($$l ," $$lc; \
	done

.include <bsd.port.mk>
