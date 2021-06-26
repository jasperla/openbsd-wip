# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	collaborative spam filter for freenet

ADDON_NAME =	WebOfTrust
V =		20180531
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	build0020

MASTER_SITES0 =	https://github.com/xor-freenet/db4o-7.4/archive/
MASTER_SITES1 =	https://repo.maven.apache.org/maven2/

JUNIT_VER =     4.12
HAMCREST_VER =  1.3
OBJENESIS_VER = 1.0

JAR_DISTFILES += junit{junit/junit/${JUNIT_VER}/junit}-${JUNIT_VER}.jar
JAR_DISTFILES += hamcrest-library{org/hamcrest/hamcrest-library/${HAMCREST_VER}/hamcrest-library}-${HAMCREST_VER}.jar
JAR_DISTFILES += hamcrest-core{org/hamcrest/hamcrest-core/${HAMCREST_VER}/hamcrest-core}-${HAMCREST_VER}.jar
JAR_DISTFILES += objenesis{org/objenesis/objenesis/${OBJENESIS_VER}/objenesis}-${OBJENESIS_VER}.jar

DISTFILES +=	${DISTNAME}.tar.gz \
		v34.tar.gz:0 \
		${JAR_DISTFILES:C/$/:1/}

EXTRACT_ONLY =	${DISTNAME}.tar.gz

MODJAVA_BUILD_ARGS=	-Dfreenet.lib.new.location=${PREFIX}/share/freenet/lib/ \
			-Djunit.location=${WRKSRC}/flatRepo/junit.jar \
			-Dhamcrest.location=${WRKSRC}/flatRepo/hamcrest-core.jar \
			-Dcobertura.location=${WRKSRC}/flatRepo/cobertura.jar    

post-extract:
	tar zxf ${DISTDIR}/v34.tar.gz -C ${WRKSRC}
	cd ${WRKSRC}/db4o-7.4-34/ && pax -rw . ${WRKSRC}/db4o-7.4
	mkdir ${WRKSRC}/flatRepo
.for jar_file in ${JAR_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor

.include <bsd.port.mk>
