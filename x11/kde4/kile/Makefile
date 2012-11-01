# $OpenBSD$

COMMENT =	user-friendly TeX/LaTex editor for KDE
HOMEPAGE =	http://kile.sourceforge.net/
V =		2.1.3
DISTNAME =	kile-${V}

CATEGORIES =	textproc

EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=kile/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kfile khtml kio kjs kparts krosscore ktexteditor
WANTLIB += nepomuk nepomukutils phonon soprano

LIB_DEPENDS =	x11/kde4/libs

RUN_DEPENDS =	print/texlive/base \
		devel/desktop-file-utils

.include <bsd.port.mk>
