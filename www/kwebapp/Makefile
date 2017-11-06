# $OpenBSD: Makefile,v 1.32 2017/10/19 14:00:29 jturner Exp $

COMMENT =		web application source generator

DISTNAME =		kwebapp-0.3.3
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kwebapp/
MASTER_SITES =		https://kristaps.bsd.lv/kwebapp/snapshots/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

LIB_DEPENDS =		databases/sqlite3

ALL_TARGET =		"kwebapp"
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

post-extract:
	cd ${WRKSRC} && chmod +x configure

.include <bsd.port.mk>
