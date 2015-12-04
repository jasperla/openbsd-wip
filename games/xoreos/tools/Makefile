# $OpenBSD$

COMMENT =		tools for reverse-engineering BioWare's Aurora engine

XOREOS_PROJECT =	xoreos-tools

WANTLIB += c lzma m pthread stdc++ xml2 z

LIB_DEPENDS =		archivers/xz \
			textproc/libxml
MODULES =		converters/libiconv

.include <bsd.port.mk>
