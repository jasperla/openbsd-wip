# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.8

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c atf-c++ c ${MODLUA_WANTLIB} lutok m sqlite3 stdc++

MASTER_SITES =		https://kyua.googlecode.com/files/

MODULES =              	lang/lua

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/kyua-testers

LIB_DEPENDS =		devel/atf

CONFIGURE_STYLE =	gnu

PORTHOME =		${WRKDIR}

FLAVOR ?=

.if ${FLAVOR:L:Mlua52}
MODLUA_VERSION =       5.2
LIB_DEPENDS +=         devel/lutok,lua52
.else
LIB_DEPENDS +=         devel/lutok
.endif

.include <bsd.port.mk>
