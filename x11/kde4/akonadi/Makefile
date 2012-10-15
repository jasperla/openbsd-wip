# $OpenBSD: Makefile,v 1.3 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, PIM access libraries
DISTNAME =		akonadi-1.8.0
REVISION =		0

SHARED_LIBS = 		akonadiprotocolinternals 1.0	# 1.0

MODKDE4_USE =
EXTRACT_SUFX =		.tar.bz2
MASTER_SITES =		${MASTER_SITE_KDE:=stable/akonadi/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += boost_program_options-mt sqlite3 soprano

BUILD_DEPENDS =		databases/mysql,-server \
			x11/qt4 \
			x11/qt4,-mysql

# Build PostgreSQL support for those who want it
BUILD_DEPENDS +=	x11/qt4,-postgresql

RUN_DEPENDS =		misc/shared-mime-info

# Do not force PostgreSQL as a dependency, MySQL is most tested one.
RUN_DEPENDS +=		databases/mysql,-server \
			x11/qt4,-mysql

LIB_DEPENDS =		STEM->=2.8.0:databases/soprano \
			devel/boost

CONFIGURE_ARGS =	-DDATABASE_BACKEND:String=MYSQL

.include <bsd.port.mk>
