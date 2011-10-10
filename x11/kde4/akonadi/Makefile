# $OpenBSD: Makefile,v 1.3 2010/11/22 08:37:02 espie Exp $

VERSION =		1.6.1
COMMENT =		KDE PIM access libraries
DISTNAME =		akonadi-${VERSION}
REVISION =		0

SHARED_LIBS += 		akonadiprotocolinternals 0.0	# 1.0

MASTER_SITES =		${MASTER_SITE_KDE:=stable/akonadi/src/}

LIB_DEPENDS =		databases/soprano \
			devel/boost \
			x11/qt4,-mysql

BUILD_DEPENDS =		x11/kde4/automoc \
			databases/mysql,-server

RUN_DEPENDS =		mysql-server-*|postgresql-server-*|sqlite3->=3.7.5:databases/postgresql,-server

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += soprano
WANTLIB += boost_program_options-mt sqlite3

CONFIGURE_ARGS +=	-DDATABASE_BACKEND:String=MYSQL

.include <bsd.port.mk>
