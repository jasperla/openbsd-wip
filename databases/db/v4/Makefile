# $OpenBSD: Makefile,v 1.72 2017/07/26 22:45:16 sthen Exp $

COMMENT-java=	Java bindings for Berkeley DB, revision ${REV}

REV=		4
VERSION=	${REV}.8.30
PKGNAME-main=	${DISTNAME}
PKGSPEC-main =	db->=4,<5|db->=4v0,<5v0
PKGSPEC-java =	db-java->=4,<5|db-java->=4v0,<5v0
PKGSPEC-tcl =	db-tcl->=4,<5|db-tcl->=4v0,<5v0

PKGNAME-java=	db-java-${VERSION}
PKGNAME-tcl=	db-tcl-${VERSION}
EPOCH-main=	0
EPOCH-java=	0
EPOCH-tcl=	0
DBLIBDIR=	lib/db4

# XXX LIBdb_VERSION is used by x11/gnome/libgda
SHARED_LIBS +=	db                   6.0      # .0.0
SHARED_LIBS +=	db_cxx               7.0      # .0.0
SHARED_LIBS +=	db_java              6.0      # .0.0
SHARED_LIBS +=	db_tcl               7.0      # .0.0

MASTER_SITES=	${HOMEPAGE}db/update/${VERSION}/

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REV}
WANTLIB=	c m ${COMPILER_LIBCXX}

PSEUDO_FLAVORS=	no_java bootstrap
FLAVOR?=
MULTI_PACKAGES = -java

RUN_DEPENDS-java=	${BUILD_PKGPATH} \
			${MODJAVA_RUN_DEPENDS}
RUN_DEPENDS-tcl=	${BUILD_PKGPATH}
WANTLIB-java=

SUBST_VARS=	LIBdb_tcl_VERSION

pre-configure:
	@perl -pi -e "s,db_(archive|checkpoint|deadlock|dump|hotbackup),db5_\0,g" ${WRKSRC}/test/*tcl
	@perl -pi -e "s,db_(load|printlog|recover|stat|upgrade|verify),db5_\0,g" ${WRKSRC}/test/*tcl
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
