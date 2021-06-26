# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	provides port forwarding and globally-routable IP detection

ADDON_NAME =	UPnP
V =		20160102
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	10007

MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

.include <bsd.port.mk>
