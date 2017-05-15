# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	specification for identifying parts of a road network

V =		1.0.0-rc.1
DISTNAME =	osmlr-tile-spec-$V

GH_ACCOUNT =	opentraffic
GH_PROJECT =	osmlr-tile-spec
GH_TAGNAME =	v$V

CATEGORIES =	geo

HOMEPAGE =	http://opentraffic.io/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/osmlr-tile-spec
	${INSTALL_DATA} ${WRKSRC}/*.proto ${PREFIX}/share/osmlr-tile-spec

.include <bsd.port.mk>
