# $OpenBSD$

CATEGORIES =	editors
COMMENT =	user-friendly TeX/LaTex editor for KDE
HOMEPAGE =	http://kile.sourceforge.net/
DISTNAME =	kile-2.1.3
REVISION =	3

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=kile/}

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kfile khtml kio kjs kparts krosscore ktexteditor
WANTLIB += nepomuk nepomukutils phonon_s soprano

MODULES =	x11/kde4

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/kate

.include <bsd.port.mk>
