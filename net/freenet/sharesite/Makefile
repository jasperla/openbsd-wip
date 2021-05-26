# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to publish and update single-page sites within freenet

ADDON_NAME =	Sharesite
V =		20200906
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	0.4.8

MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

WRKDIST =	${WRKDIR}/plugin-${ADDON_NAME:L}-${GH_TAGNAME}

post-build:
	cp ${WRKSRC}/dist/${ADDON_NAME}-b79.jar ${WRKSRC}/dist/${ADDON_NAME}.jar

.include <bsd.port.mk>
