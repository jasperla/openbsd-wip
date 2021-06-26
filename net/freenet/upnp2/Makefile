# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to keep some keys within freenet accessible

ADDON_NAME =	UPnP2
V =		20200811
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	0.0.2

MASTER_SITES0 = http://4thline.org/m2/
MASTER_SITES1 = https://services.gradle.org/distributions/

CLING_VER =	2.1.0
SEAMLESS_VER =	1.1.1

JAR_DISTFILES +=cling-core{org/fourthline/cling/cling-core/${CLING_VER}/cling-core}-${CLING_VER}.jar
JAR_DISTFILES +=cling-support{org/fourthline/cling/cling-support/${CLING_VER}/cling-support}-${CLING_VER}.jar
JAR_DISTFILES +=seamless-util{org/seamless/seamless-util/${SEAMLESS_VER}/seamless-util}-${SEAMLESS_VER}.jar
JAR_DISTFILES +=seamless-http{org/seamless/seamless-http/${SEAMLESS_VER}/seamless-http}-${SEAMLESS_VER}.jar
JAR_DISTFILES +=seamless-xml{org/seamless/seamless-xml/${SEAMLESS_VER}/seamless-xml}-${SEAMLESS_VER}.jar
JAR_DISTFILES +=seamless-swing{org/seamless/seamless-swing/${SEAMLESS_VER}/seamless-swing}-${SEAMLESS_VER}.jar

DISTFILES +=	${DISTNAME}.tar.gz \
		${JAR_DISTFILES:C/$/:0/} \
		gradle-4.10.3-bin.zip:1

EXTRACT_ONLY += ${DISTNAME}.tar.gz

BUILD_DEPENDS =	java/gradle

MAKE_ENV +=	GRADLE_USER_HOME="${WRKSRC}/.gradle" \
		GRADLE_OPTS="-Dorg.gradle.internal.launcher.welcomeMessageEnabled=false"

post-extract:
	mkdir ${WRKSRC}/flatRepo
	cp ${DISTDIR}/gradle-4.10.3-bin.zip  ${WRKSRC}/gradle/wrapper
.for jar_file in ${JAR_DISTFILES:C/{.*}//} ${FREENET_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor

post-patch:
	${SUBST_CMD} ${WRKSRC}/build.gradle

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./gradlew -g ${WRKSRC}/gradle \
	--offline --no-daemon jar

post-build:
	mkdir ${WRKSRC}/dist
	cd ${WRKSRC}/build/libs && cp freenet-${ADDON_NAME}.jar \
	${WRKSRC}/dist/${ADDON_NAME}.jar

.include <bsd.port.mk>
