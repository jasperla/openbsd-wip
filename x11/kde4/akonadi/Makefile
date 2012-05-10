# $OpenBSD: Makefile,v 1.3 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, PIM access libraries
DISTNAME =		akonadi-1.7.0

SHARED_LIBS = 		akonadiprotocolinternals 0.0	# 1.0

MODKDE4_USE =

MASTER_SITES =		${MASTER_SITE_KDE:=stable/akonadi/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += soprano
WANTLIB += boost_program_options-mt sqlite3

BUILD_DEPENDS =		x11/qt4,-mysql \
			x11/qt4,-postgresql \
			x11/qt4,-sqlite \
			databases/mysql,-server

# XXX no way to force correleation between dependency options below
# No qt4-sqlite dependency as Akonadi uses own SQLite plugin.
RUN_DEPENDS =		mysql-server-*|postgresql-server-*|sqlite3->=3.7.5:databases/postgresql,-server \
			qt4-mysql-*|qt4-postgresql-*:x11/qt4,-postgresql \
			misc/shared-mime-info

LIB_DEPENDS =		STEM->=2.7.3:databases/soprano \
			databases/sqlite3 \
			devel/boost \

CONFIGURE_ARGS =	-DDATABASE_BACKEND:String=POSTGRES

.include <bsd.port.mk>
