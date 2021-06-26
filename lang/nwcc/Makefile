# $OpenBSD$

COMMENT =	Nils Weller's C compiler for Unix systems
DISTNAME =	nwcc_0.8.3
PKGNAME =	${DISTNAME:S/_/-/}
CATEGORIES =	lang

HOMEPAGE =	http://nwcc.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=nwcc/}

WANTLIB += c pthread

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--installprefix="${PREFIX}"

.include <bsd.port.mk>
