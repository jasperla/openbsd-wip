# $OpenBSD: Makefile,v 1.2 2013/03/16 13:25:21 bcallah Exp $

V =		0.4.3
COMMENT =	QT4-based tabbed document viewer
DISTNAME =	qpdfview-${V}
CATEGORIES =	print x11

HOMEPAGE =	https://launchpad.net/qpdfview/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext Xi Xinerama
WANTLIB += Xrender c cups djvulibre fontconfig freetype m
WANTLIB += magic poppler-qt4 pthread spectre stdc++ z

MASTER_SITES =	https://launchpad.net/qpdfview/trunk/${V}/+download/

MODULES =	x11/qt4

LIB_DEPENDS =	devel/libmagic \
		graphics/djvulibre \
		print/cups,-libs \
		print/libspectre \
		print/poppler,,-qt4

RUN_DEPENDS =	devel/desktop-file-utils

pre-configure:
	perl -pi -e "s,/usr,${LOCALBASE},g;s,share/man,man,g" ${WRKSRC}/qpdfview.pri

do-build:
	cd ${WRKSRC} && qmake4 qpdfview.pro && ${MAKE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qpdfview ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qpdfview
	${INSTALL_DATA} ${WRKSRC}/libqpdfview_{pdf,ps,djvu}.so ${PREFIX}/lib/qpdfview
	${INSTALL_DATA_DIR} ${PREFIX}/share/qpdfview
	${INSTALL_DATA} ${WRKSRC}/icons/qpdfview.svg ${PREFIX}/share/qpdfview
	${INSTALL_DATA} ${WRKSRC}/miscellaneous/help.html ${PREFIX}/share/qpdfview
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/miscellaneous/qpdfview.desktop ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/miscellaneous/qpdfview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
