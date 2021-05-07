# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to create and upload new freesite search indexes

ADDON_NAME =	Spider
V =		52
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	v${V}

MODJAVA_BUILD_TARGET_NAME=
MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

.include <bsd.port.mk>
