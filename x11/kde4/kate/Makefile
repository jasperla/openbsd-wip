# $OpenBSD$

COMMENT =		KDE advanced text editor
DISTNAME =		kate-${VERSION}
REVISION =		0

SHARED_LIBS +=  kateinterfaces			0.0 # 4.7
SHARED_LIBS +=  katepartinterfaces		0.0 # 4.7
SHARED_LIBS +=  ktexteditor_codesnippets_core	0.0 # 0.0

USE_GROFF =		Yes
BUILD_DEPENDS +=	x11/kde4/automoc
LIB_DEPENDS +=		x11/kde4/libs

WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtScript QtSql QtSvg
WANTLIB += QtXml c kcmutils kdecore>=8 kdeui kemoticons kfile
WANTLIB += kidletime kio knewstuff2 knewstuff3 kparts kprintutils
WANTLIB += ktexteditor kutils m nepomuk nepomukutils plasma pthread
WANTLIB += soprano stdc++

.include <bsd.port.mk>
