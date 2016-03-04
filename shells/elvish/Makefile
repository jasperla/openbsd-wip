# $OpenBSD$

COMMENT =	novel Unix shell
DISTNAME =	${GH_PROJECT}-0.0.20150229
GH_ACCOUNT =	elves
GH_PROJECT =	elvish
GH_COMMIT =	68f76a44f91d0d881d739878cd3699ef3aafafdc
CATEGORIES =	shells

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_TYPE =		bin

BUILD_DEPENDS =		databases/go-sqlite3

.include <bsd.port.mk>
