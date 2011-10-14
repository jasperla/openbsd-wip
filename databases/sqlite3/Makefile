# $OpenBSD$

COMMENT-main =	embedded SQL implementation
COMMENT-tcl =	TCL bindings to Sqlite3

SQLITE_VER =	3.7.8.0
DISTNAME=	sqlite-autoconf-${SQLITE_VER:S/./0/g}
DISTFILES=	sqlite-autoconf-${SQLITE_VER:S/./0/g}.tar.gz 

PKGNAME-main=	sqlite3-${SQLITE_VER}
PKGNAME-tcl=	sqlite3-tcl-${SQLITE_VER}

SHARED_LIBS +=  sqlite3              15.2     # 8.6

CATEGORIES =	databases

HOMEPAGE =	http://www.sqlite.org/

# Public Domain
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c curses pthread readline

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes
PSEUDO_FLAVORS =	no_tcl
MULTI_PACKAGES +=	-main

CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

TCL_CONF_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR}

CFLAGS +=		-DSQLITE_ENABLE_COLUMN_METADATA \
			-DSQLITE_ENABLE_FTS3 \
			-DSQLITE_ENABLE_RTREE \
			-DSQLITE_ENABLE_UNLOCK_NOTIFY \
			-DSQLITE_HAVE_ISNAN

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
CONFIGURE_ARGS +=	--enable-dynamic-extensions
FLAVOR ?=
.else
FLAVOR =		no_tcl
.endif

.if !${FLAVOR:L:Mno_tcl}
MULTI_PACKAGES +=	-tcl
MODULES +=		lang/tcl
BUILD_DEPENDS = 	${MODTCL_BUILD_DEPENDS}
WANTLIB-tcl =		pthread

post-configure:
	cd ${WRKCONF}/tea && \
	${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
	INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
	INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
	${CONFIGURE_ENV} ./configure ${TCL_CONF_ARGS}

post-build:
	cd ${WRKBUILD}/tea && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
.endif

# Don't include dependency on pthreads, weak pthread functions are
# used for non-threaded applications.
post-install:
	perl -pi -e s,'\-pthread','',g ${PREFIX}/lib/libsqlite3.la \
		${PREFIX}/lib/pkgconfig/sqlite3.pc
	${INSTALL_MAN} ${WRKBUILD}/sqlite3.1 ${PREFIX}/man/man1
.if !${FLAVOR:L:Mno_tcl}
	cd ${WRKBUILD}/tea && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${FAKE_TARGET} ${ALL_FAKE_FLAGS}
.endif

.include <bsd.port.mk>
