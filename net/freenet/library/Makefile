# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to search freenet

ADDON_NAME =	Library
V =		37
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	v${V}

MASTER_SITES0 =	https://repo.maven.apache.org/maven2/

YAML_VER =	1.5

JAR_DISTFILES += snakeyaml{org/yaml/snakeyaml/${YAML_VER}/snakeyaml}-${YAML_VER}.jar

DISTFILES +=	${DISTNAME}.tar.gz \
		${JAR_DISTFILES:C/$/:0/}

EXTRACT_ONLY =	${DISTNAME}.tar.gz

MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

post-extract:
.for jar_file in ${JAR_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/lib
.endfor

.include <bsd.port.mk>
