# $OpenBSD: Makefile,v 1.5 2019/02/15 02:15:57 jturner Exp $

COMMENT =		simple man page generator for POSIX systems

VERSION =		1.9.4
DISTNAME =		scdoc-${VERSION}
CATEGORIES =		textproc

HOMEPAGE =		https://git.sr.ht/~sircmpwn/scdoc
MASTER_SITES =		https://deftly.net/dist/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c

USE_GMAKE =		Yes
MAKE_FLAGS =		PREFIX=${PREFIX} DESTDIR=${DESTDIR} \
			MANDIR=${DESTDIR}/${PREFIX}/man

.include <bsd.port.mk>
