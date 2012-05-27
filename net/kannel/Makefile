# $OpenBSD:

COMMENT =		compact and very powerful WAP and SMS gateway

VERSION =		1.5.0
SVNDATE =		20120512
DISTNAME =		kannel-${VERSION}-${SVNDATE}
PKGNAME =		kannel-${VERSION}
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		net
MAINTAINER =		Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =		http://kannel.org/

# Kannel Software License 1.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://spacehopper.org/mirrors/

LDFLAGS="${LDFLAGS} -pthread"

WANTLIB =		c crypto m ssl z pthread ssl xml2 iconv

LIB_DEPENDS =		textproc/libxml,-main,no_python\
			converters/libiconv

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-warnings

WRKDIST =		${WRKDIR}/gateway-1.5.0

NO_REGRESS =		Yes

PSEUDO_FLAVORS = no_pgsql no_mysql no_sqlite pcre

FLAVOR ?=

.if !${FLAVOR:L:Mno_pgsql}
    CONFIGURE_ARGS +=	--with-pgsql
    WANTLIB +=		pq
    LIB_DEPENDS +=	databases/postgresql,-main
.endif

.if !${FLAVOR:L:Mno_mysql}
    CONFIGURE_ARGS +=	--with-mysql
    WANTLIB +=		crypto m ssl z mysqlclient lib/mysql/mysqlclient_r
    LIB_DEPENDS +=	databases/mysql,-main
.endif

.if !${FLAVOR:L:Mno_sqlite}
    CONFIGURE_ARGS +=	--with-sqlite3
    WANTLIB +=		sqlite3 z
    LIB_DEPENDS +=	databases/sqlite3
.endif

.if ${FLAVOR:L:Mpcre}
    CONFIGURE_ARGS +=	--enable-pcre
    WANTLIB +=		pcre pcreposix
    LIB_DEPENDS +=	devel/pcre
.endif


SH_SCRIPTS = kannelctl smsbox_enable wapbox_enable

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kannel
	${INSTALL_DATA} ${WRKSRC}/doc/examples/kannel.conf \
		${WRKSRC}/doc/examples/modems.conf \
		${WRKSRC}/doc/examples/dlr-mysql.conf \
		${WRKSRC}/doc/examples/dlr-sqlite3.conf \
		${PREFIX}/share/examples/kannel
.for i in ${SH_SCRIPTS}
	${INSTALL_SCRIPT} ${FILESDIR}/$i ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
