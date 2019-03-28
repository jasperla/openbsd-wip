# $OpenBSD$

# XXX will require major work to build against libressl

COMMENT-server=	network backup software
COMMENT-main=	client for Bareos backup software
COMMENT-pgsql=	PostgreSQL support for Bareos
COMMENT-mysql=	MariaDB/MySQL support for Bareos
COMMENT-pgsql=	PostgreSQL support for Bareos
COMMENT-sqlite3= SQLite3 support for Bareos
COMMENT-web=	web UI for Bareos

V=		18.2.6
GH_ACCOUNT=	bareos
GH_PROJECT=	bareos
GH_TAGNAME=	Release/$V

DISTNAME=	bareos-$V
PKGNAME-main=	bareos-client-$V
PKGNAME-server=	bareos-$V
PKGNAME-web=	bareos-web-$V
PKGNAME-mysql=	bareos-mysql-$V
PKGNAME-pgsql=	bareos-pgsql-$V
PKGNAME-sqlite3= bareos-sqlite3-$V

WRKDIST=	${WRKDIR}/bareos-Release-$V

#SHARED_LIBS=	

CATEGORIES=	sysutils

HOMEPAGE=	https://www.bareos.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# AGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	${COMPILER_LIBCXX} # ...

MODULES=	devel/cmake
COMPILER=	base-clang ports-gcc
PATCHORIG=	.orig.port

MULTI_PACKAGES=	-main -server -web -mysql -pgsql -sqlite3
PSEUDO_FLAVORS=	no_pgsql no_mysql no_server
FLAVOR?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/core/CMakeLists.txt

#      GAWK:                         /usr/local/bin/gawk
#   Install system config files:   /usr/local/etc 
#   Install Bareos config dir:     /usr/local/etc/bareos 
#   Install BareosWebui configdir: /usr/local/etc/bareos-webui 

CONFIGURE_ARGS += \
	-DBUILD_SHARED_LIBS=yes \
	-Ddynamic-cats-backends=yes \
	-Ddynamic-storage-backends=yes \
	-Dipv6=yes \
	-Ddir-user=_bareos \
	-Ddir-group=_bareos \
	-Dsd-user=_bareos-sd \
	-Dsd-group=_bareos \
	-Dfd-user=root \
	-Dfd-group=wheel \
	-Dsysconfdir=${SYSCONFDIR} \
	-Ddir-password="XXX_REPLACE_WITH_DIRECTOR_PASSWORD_XXX" \
	-Dfd-password="XXX_REPLACE_WITH_CLIENT_PASSWORD_XXX" \
	-Dsd-password="XXX_REPLACE_WITH_STORAGE_PASSWORD_XXX" \
	-Dmon-dir-password="XXX_REPLACE_WITH_DIRECTOR_MONITOR_PASSWORD_XXX" \
	-Dmon-fd-password="XXX_REPLACE_WITH_CLIENT_MONITOR_PASSWORD_XXX" \
	-Dmon-sd-password="XXX_REPLACE_WITH_STORAGE_MONITOR_PASSWORD_XXX" \
	-Dbasename="XXX_REPLACE_WITH_LOCAL_HOSTNAME_XXX" \
	-Dhostname="XXX_REPLACE_WITH_LOCAL_HOSTNAME_XXX" \
	-Darchivedir=${LOCALSTATEDIR}/bareos/storage \
	-Dbsrdir=${LOCALSTATEDIR}/bareos \
	-Dlogdir=${LOCALSTATEDIR}/log/bareos \
	-Dpid-dir=${LOCALSTATEDIR}/bareos \
	-Dworking-dir=${LOCALSTATEDIR}/bareos \


#                        --with-subsys-dir=${LOCALSTATEDIR} \
#                        --with-working-dir=${LOCALSTATEDIR} \


xxxCONFIGURE_ARGS+= \
	-Dlibdir=/usr/local/lib \
	-Dbackenddir=/usr/local/lib \
	-Dscriptdir=/usr/lib/bareos/scripts \
	-Dplugindir=/usr/local/lib/bareos/plugins \
	-Dsubsys-dir=/var/lock \
	-Dpython=yes \
	-Dsmartalloc=yes \
	-Dconio=no \
	-Dbatch-insert=yes \
	-Dscsi-crypto=no \
	-Dlmdb=yes \
	-Dpostgresql=yes \
	-Dincludes=yes \
	-Djansson=${LOCALBASE} \
	-DVERSION_STRING=$(DISTVERSION)


.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_server}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-pgsql:N-mysql:N-sqlite3}
.endif

.if !${BUILD_PACKAGES:M-server}
CONFIGURE_ARGS +=	-Dclient-only=no
.else
CONFIGURE_ARGS +=	-Dclient-only=yes
.endif

.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS +=	-Dmysql=no
.else
CONFIGURE_ARGS +=	-Dmysql=yes
.endif

.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS +=	-Dpostgresql=no
.else
CONFIGURE_ARGS +=	-Dpostgresql=yes
.endif

.if !${BUILD_PACKAGES:M-sql}
CONFIGURE_ARGS +=	-Dsqlite3=no
.else
CONFIGURE_ARGS +=	-Dsqlite3=yes
.endif

.include <bsd.port.mk>
