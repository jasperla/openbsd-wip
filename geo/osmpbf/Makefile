# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		library to read/write OpenStreetMap PBF files

V =			1.3.3
DISTNAME =		osmpbf-$V

CATEGORIES =		geo

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m protobuf-lite pthread stdc++ z

GH_ACCOUNT =		scrosby
GH_PROJECT =		OSM-binary
GH_TAGNAME =		v$V

MODULES =		devel/cmake
LIB_DEPENDS =		devel/protobuf

NO_TEST =		Yes

.include <bsd.port.mk>
