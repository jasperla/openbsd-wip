# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to detect your IP address and connectivity

ADDON_NAME =	JSTUN
V =		20140329
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	v5

MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

post-patch:
	${SUBST_CMD} ${WRKSRC}/build.xml

.include <bsd.port.mk>
