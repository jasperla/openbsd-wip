# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to allow connections to local clients

ADDON_NAME =	MDNSDiscovery
V =		2
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	b27d6e86db2f1a90dc6f7225db78c5a259b0cf37

MODJAVA_BUILD_TARGET_NAME=
MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

.include <bsd.port.mk>
