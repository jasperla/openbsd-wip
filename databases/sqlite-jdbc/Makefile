# $OpenBSD$

# better sync with databases
VERSION =	3.28.0
COMMENT =	JDBC interface for SQLite 3.x

CATEGORIES =	databases devel

GH_ACCOUNT =	xerial
GH_PROJECT =	sqlite-jdbc
GH_TAGNAME =	${VERSION}

# Anyone willing to take MAINTAINER?
# MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

# there is a native library inside .jar, which uses libc
WANTLIB =	c

# Maven wants a lot of stuff from outside during build.
# We cache it and re-use when building this port.
# See also the prepare-maven-cache target at the bottom.
MASTER_SITES0 =	https://www.ohvost.ru/dnl/
MASTER_SITES1 =	https://www.sqlite.org/2019/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		sqlite-jdbc-maven-cache-20191218.tgz:0 \
		sqlite-amalgamation-${VERSION:C/\.//g}000.zip:1

EXTRACT_ONLY =	${DISTFILES:Nsqlite-amal*:C/:.*//}

MODULES =	java
MODJAVA_VER =	1.8+
NO_BUILD =	No

BUILD_DEPENDS =	devel/maven

USE_GMAKE =	Yes
ALL_TARGET =	jni-header native

# some tests are run during build automatically
NO_TEST =	Yes

# to make maven happy
PORTHOME =	${WRKDIR}

# Maven tends to ignore HOME, looking up user home directory directly
MVN =		env HOME=${PORTHOME} \
		${LOCALBASE}/bin/mvn -B -Duser.home=${PORTHOME}

post-extract:
	mkdir -p ${WRKDIST}/target
	cp ${DISTDIR}/${DISTFILES:Msqlite-amal*:C/:.*//} \
	   ${WRKDIST}/target/sqlite-${VERSION}-amal.zip

post-build:
	cd ${WRKBUILD}; ${MVN} -o package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sqlite-jdbc
	${INSTALL_DATA} ${WRKBUILD}/target/sqlite-jdbc-${VERSION}.jar \
	    ${PREFIX}/share/sqlite-jdbc/

.include <bsd.port.mk>

.PHONY: prepare-maven-cache
MVN_CACHE_NEW !=	echo sqlite-jdbc-maven-cache-`date +%Y%m%d`.tgz
prepare-maven-cache: patch
	rm -Rf ${PORTHOME}/.m2
	cd ${WRKSRC}; ${MVN} initialize
	cd ${PORTHOME}; pax -wz .m2 >${MVN_CACHE_NEW}
	install ${PORTHOME}/${MVN_CACHE_NEW} ${DISTDIR}/
