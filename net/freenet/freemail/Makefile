# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	provides email facility over freenet

ADDON_NAME =	Freemail_wot
V =		0.2.7.5
GH_PROJECT =	plugin-${ADDON_NAME:S/_wot//}
GH_TAGNAME =	663da1e7944b00f61a29be29c65b1526141bcdab

WRKDIST =	${WRKDIR}/${DISTNAME}

MODJAVA_BUILD_TARGET_NAME=
MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar \
			-Dbcprov.location=${PREFIX}/share/freenet/lib/bcprov-jdk15on-1.59.jar

post-build:
	cd ${WRKSRC}/dist/ && cp ${ADDON_NAME:S/_wot//}.jar ${ADDON_NAME}.jar
.include <bsd.port.mk>
