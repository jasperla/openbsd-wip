# $OpenBSD$

COMMENT =	K Desktop Environment, quake-style terminal emulator
HOMEPAGE =	http://yakuake.kde.org/
VERSION =	2.9.8
DISTNAME =	yakuake-${VERSION}
REVISION =	1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/yakuake/${VERSION}/src/}
EXTRACT_SUFX =	.tar.bz2

WANTLIB =  c m pthread stdc++
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio kparts nepomuk nepomukutils soprano

RUN_DEPENDS =	x11/kde4/konsole

# System (CMake) FindGettext.cmake requires having PO_FILES marker
post-patch:
	@find ${WRKSRC} -name CMakeLists.txt -print0 | \
		xargs -0rt \
			perl -pi.pofilesfix \
	-e 'if (/GETTEXT_PROCESS_PO_FILES/) { \
		s@\$$\{_po_files\}@PO_FILES $$&@; \
	}'

.include <bsd.port.mk>
