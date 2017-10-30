# $OpenBSD$

CATEGORIES ?=	x11

GH_ACCOUNT ?=	DeforaOS

HOMEPAGE ?=	https://www.defora.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

MAKE_FLAGS +=	CC="${CC}" PREFIX="${PREFIX}" \
		MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes
