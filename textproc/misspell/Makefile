# $OpenBSD$

COMMENT =	correct commonly misspelled English words in source files

GH_ACCOUNT =	client9
GH_PROJECT =	misspell
GH_TAGNAME =	v0.3.4

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/misspell

.include <bsd.port.mk>
