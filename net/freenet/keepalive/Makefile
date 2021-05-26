# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to keep some keys within freenet accessible

ADDON_NAME =	KeepAlive
V =		20200522
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	build0009

MASTER_SITES0 = https://repo.maven.apache.org/maven2/

H2_VER =	1.4.199
ANT_VER =	1.10.5

JAR_DISTFILES +=h2{com/h2database/h2/${H2_VER}/h2}-${H2_VER}.jar
JAR_DISTFILES +=ant{org/apache/ant/ant/${ANT_VER}/ant}-${ANT_VER}.jar

DISTFILES +=	${DISTNAME}.tar.gz \
		${JAR_DISTFILES:C/$/:0/}

EXTRACT_ONLY += ${DISTNAME}.tar.gz

BUILD_DEPENDS =	java/gradle

post-extract:
	mkdir ${WRKSRC}/flatRepo
.for jar_file in ${JAR_DISTFILES:C/{.*}//} ${FREENET_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor

post-patch:
	${SUBST_CMD} ${WRKSRC}/build.gradle

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} gradle -g ${WRKSRC}/gradle \
	--offline --no-daemon jar

post-build:
	mkdir ${WRKSRC}/dist
	cd ${WRKSRC}/build/libs && cp plugin-${ADDON_NAME}-${GH_TAGNAME}.jar \
	${WRKSRC}/dist/${ADDON_NAME}.jar

.include <bsd.port.mk>
