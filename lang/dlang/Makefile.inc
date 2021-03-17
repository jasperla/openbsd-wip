# $OpenBSD$

# XXX: i386 too, eventually
ONLY_FOR_ARCHS =	amd64

CATEGORIES ?=	lang

HOMEPAGE ?=	https://dlang.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

MASTER_SITES ?=	https://github.com/ibara/dmd/releases/download/bootstrap/

NO_TEST ?=	Yes
