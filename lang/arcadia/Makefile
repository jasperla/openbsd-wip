# $OpenBSD$

V =		0.13.2
COMMENT =	implementation of the Arc programming language in C
DISTNAME =	arcadia-${V}
CATEGORIES =	lang

GH_ACCOUNT =	kimtg
GH_PROJECT =	arcadia
GH_TAGNAME =	v${V}

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses edit m

ALL_TARGET =	arcadia
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DREADLINE -c" \
		LDFLAGS="${LDFLAGS} -lcurses -ledit -lm"

NO_TEST =	Yes

# no install target
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arcadia ${PREFIX}/bin

.include <bsd.port.mk>
