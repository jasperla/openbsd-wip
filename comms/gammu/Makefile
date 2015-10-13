# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Gnu All Mobile Management Utilities

DISTNAME =		gammu-1.36.6

SHARED_LIBS += 		Gammu 0.0 # 7.1
SHARED_LIBS += 		gsmsd 0.0 # 7.1

CATEGORIES =		comms

HOMEPAGE =		http://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curl dbi glib-2.0 gobject-2.0 m pthread usb-1.0

MASTER_SITES =		http://dl.cihar.com/gammu/releases/

MODULES =		devel/cmake \
			devel/gettext

RUN_DEPENDS =		misc/dialog
LIB_DEPENDS =		databases/libdbi \
			devel/glib2 \
			devel/libusb1 \
			net/curl
TEST_DEPENDS = 		devel/cmake

CONFIGURE_ARGS +=	-DINSTALL_MAN_DIR:STRING=man \
			-DINSTALL_BASH_COMPLETION=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -liconv -lintl"

FLAVORS += 		mysql pgsql
FLAVOR ?=
SEPARATE_BUILD = 	flavored

.if !${FLAVOR:Mpgsql} && !${FLAVOR:Mmysql}
RUN_DEPENDS += 		databases/libdbi-drivers,-sqlite3
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS += 	-DMYSQL_BACKEND=ON
LIB_DEPENDS += 		databases/mariadb
#RUN_DEPENDS +=		databases/libdbi-drivers \
WANTLIB += 		mysqlclient
.endif

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS += 	-DPSQL_BACKEND=ON
LIB_DEPENDS += 		databases/postgresql
RUN_DEPENDS +=		databases/libdbi-drivers,-pgsql
WANTLIB += 		pq
.endif

.include <bsd.port.mk>
