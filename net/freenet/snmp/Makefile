# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to remotely monitor your node's status

ADDON_NAME =	SNMP
V =		0.0
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	49da5884b0127e7c8b4e487171f879352dcfce2a

MODJAVA_BUILD_TARGET_NAME=
MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

.include <bsd.port.mk>
