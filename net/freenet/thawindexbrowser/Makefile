# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	tool to browse thaw file indexes within freenet

ADDON_NAME =	ThawIndexBrowser
V =		0.1
GH_PROJECT =	plugin-${ADDON_NAME}
GH_TAGNAME =	v6

MODJAVA_BUILD_ARGS=	-Dfreenet-cvs-snapshot.location=${PREFIX}/share/freenet/lib/freenet.jar \
			-Dfreenet-ext.location=${PREFIX}/share/freenet/lib/freenet-ext-29.jar

.include <bsd.port.mk>
