# $OpenBSD: Makefile,v 1.3 2010/11/22 08:37:02 espie Exp $

VERSION =		1.6.0
REVISION =		2
COMMENT =		KDE PIM access libraries
DISTNAME =		akonadi-${VERSION}

MASTER_SITES =		${MASTER_SITE_KDE:=stable/akonadi/src/}
SHARED_LIBS += 		akonadiprotocolinternals 0.0	# 1.0

LIB_DEPENDS +=		databases/soprano \
			devel/boost \
			x11/qt4,-mysql

BUILD_DEPENDS +=	x11/kde4/automoc \
			databases/mysql,-server

RUN_DEPENDS =		databases/mysql,-server

WANTLIB += c m pthread stdc++
WANTLIB += boost_program_options-mt
WANTLIB += soprano
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml

.include <bsd.port.mk>
