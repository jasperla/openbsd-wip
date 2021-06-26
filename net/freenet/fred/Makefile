# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	A peer-to-peer platform for censorship-resistant network

V =		${APP_VER}
PKGNAME =	fred-${V}
GH_PROJECT =	fred
GH_TAGNAME =	build01491

MASTER_SITES0 =	https://github.com/freenet/seedrefs/archive/
MASTER_SITES1 = https://repo.maven.apache.org/maven2/
MASTER_SITES2 =	https://mvn.freenetproject.org/
MASTER_SITES3 =	https://services.gradle.org/distributions/

BCPROV_VER =	1.59
JNA_VER =	4.5.2
JUNIT_VER =	4.12
MOCKITO_VER =	1.9.5
HAMCREST_VER =	1.3
OBJENESIS_VER =	1.0
FREENET_VER =	29
GRADLE_VER =	0.9.2

JAR_DISTFILES += bcprov{org/bouncycastle/bcprov-jdk15on/${BCPROV_VER}/bcprov}-jdk15on-${BCPROV_VER}.jar
JAR_DISTFILES += jna-platform{net/java/dev/jna/jna-platform/${JNA_VER}/jna-platform}-${JNA_VER}.jar
JAR_DISTFILES += jna{net/java/dev/jna/jna/${JNA_VER}/jna}-${JNA_VER}.jar
JAR_DISTFILES += junit{junit/junit/${JUNIT_VER}/junit}-${JUNIT_VER}.jar
JAR_DISTFILES += mockito-core{org/mockito/mockito-core/${MOCKITO_VER}/mockito-core}-${MOCKITO_VER}.jar
JAR_DISTFILES += hamcrest-library{org/hamcrest/hamcrest-library/${HAMCREST_VER}/hamcrest-library}-${HAMCREST_VER}.jar
JAR_DISTFILES += hamcrest-core{org/hamcrest/hamcrest-core/${HAMCREST_VER}/hamcrest-core}-${HAMCREST_VER}.jar
JAR_DISTFILES += objenesis{org/objenesis/objenesis/${OBJENESIS_VER}/objenesis}-${OBJENESIS_VER}.jar
JAR_DISTFILES += gradle{com/android/tools/build/gradle/${GRADLE_VER}/gradle}-${GRADLE_VER}.jar
FREENET_DISTFILES += freenet-ext{org/freenetproject/freenet-ext/${FREENET_VER}/freenet-ext}-${FREENET_VER}.jar 

DISTFILES +=	${DISTNAME}.tar.gz \
		build01480.tar.gz:0 \
		${JAR_DISTFILES:C/$/:1/} \
		${FREENET_DISTFILES:C/$/:2/} \
		gradle-4.10.3-bin.zip:3

EXTRACT_ONLY =	${DISTNAME}.tar.gz

RUN_DEPENDS =	java/tanukiwrapper \
		security/nss
LIB_DEPENDS =	devel/gmp

MAKE_ENV +=	GRADLE_USER_HOME="${WRKSRC}/.gradle" \
		GRADLE_OPTS="-Dorg.gradle.internal.launcher.welcomeMessageEnabled=false"

post-extract:
	tar zxf ${DISTDIR}/build01480.tar.gz -C ${WRKSRC}
	mkdir ${WRKSRC}/flatRepo
	cp ${DISTDIR}/gradle-4.10.3-bin.zip  ${WRKSRC}/gradle/wrapper
	cat ${WRKSRC}/seedrefs-build01480/* >> ${WRKSRC}/seednodes.fref
.for jar_file in ${JAR_DISTFILES:C/{.*}//} ${FREENET_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./gradlew \
	--offline \
	-DtargetJavaVersion=${MODJAVA_VER} \
	--no-build-cache --no-daemon \
	copyRuntimeLibs

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./gradlew \
	--offline \
	-DtargetJavaVersion=${MODJAVA_VER} \
	--no-build-cache --no-daemon \
	test

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/run.sh ${PREFIX}/bin/freenet
	${INSTALL_DATA_DIR} ${PREFIX}/share/freenet
	${INSTALL_DATA_DIR} ${PREFIX}/share/freenet/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/freenet/conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/freenet/noderef
	${INSTALL_SCRIPT} ${FILESDIR}/wrapper.config ${PREFIX}/share/freenet
	${INSTALL_DATA} ${FILESDIR}/freenet.ini.dist ${PREFIX}/share/freenet/conf/freenet.ini
	${INSTALL_DATA} ${WRKSRC}/seednodes.fref ${PREFIX}/share/freenet/noderef
	${INSTALL_DATA} ${WRKSRC}/build/output/*.jar ${PREFIX}/share/freenet/lib
	zip -qd ${PREFIX}/share/freenet/lib/freenet-ext-29.jar "org/tanukisoftware/*"

.include <bsd.port.mk>
