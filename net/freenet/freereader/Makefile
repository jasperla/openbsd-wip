# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to insert RSS and ATOM feeds as freesites

ADDON_NAME =	Freereader
V =		6
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	${V}

MASTER_SITES0 =	http://www.java2s.com/Code/JarDownload/

JDOM_VER =	1.1.1
JARJAR_VER =	1.0
JAXEN_VER =	1.1.1
ROME_VER =	1.0.0

JAR_DISTFILES +=jdom{jdom/jdom}-${JDOM_VER}
JAR_DISTFILES +=jarjar{jarjar/jarjar}-${JARJAR_VER}
JAR_DISTFILES +=jaxen{jaxen/jaxen}-${JAXEN_VER}
JAR_DISTFILES +=rome{rome/rome}-${ROME_VER}

DISTFILES +=	${DISTNAME}.tar.gz \
		${JAR_DISTFILES:C/$/.jar.zip:0/}

EXTRACT_ONLY =	${DISTNAME}.tar.gz

MODJAVA_BUILD_TARGET_NAME=
MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

post-extract:
	mkdir ${WRKSRC}/lib
.for jar_file in ${JAR_DISTFILES:C/{.*}//}
	unzip ${DISTDIR}/${jar_file}.jar.zip -d ${WRKSRC}/lib
.endfor
	cp ${WRKSRC}/lib/jdom{-${JDOM_VER},}.jar
	cp ${WRKSRC}/lib/rome-{${ROME_VER},${ROME_VER:S/.0//}}.jar

.include <bsd.port.mk>
