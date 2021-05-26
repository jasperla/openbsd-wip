# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool for examining freenet keys

ADDON_NAME =	KeyUtils
V =		20200906
GH_PROJECT = 	plugin-${ADDON_NAME}
GH_TAGNAME =	1b3cc6bd33443448afbaac8339157c052fcbaa24

MASTER_SITES0 =	https://services.gradle.org/distributions/

DISTFILES +=	${DISTNAME}.tar.gz \
		gradle-4.10.3-bin.zip:0 \

EXTRACT_ONLY =	${DISTNAME}.tar.gz

MAKE_ENV +=	GRADLE_USER_HOME="${WRKSRC}/.gradle" \
		GRADLE_OPTS="-Dorg.gradle.internal.launcher.welcomeMessageEnabled=false"

post-extract:
	mkdir ${WRKSRC}/flatRepo
	cp ${DISTDIR}/gradle-4.10.3-bin.zip  ${WRKSRC}/gradle/wrapper
.for jar_file in ${JAR_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor

post-patch:
	${SUBST_CMD} ${WRKSRC}/build.gradle

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./gradlew -g ${WRKSRC}/gradle \
	--offline --no-daemon jar

post-build:
	mkdir ${WRKSRC}/dist
	cd ${WRKSRC} && cp build/libs/freenet-${ADDON_NAME}.jar dist/${ADDON_NAME}.jar

.include <bsd.port.mk>
