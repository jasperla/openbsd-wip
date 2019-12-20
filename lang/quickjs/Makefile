# $OpenBSD$

COMMENT =	small and embeddable JavaScript engine

DISTNAME =	quickjs-2019-10-27

CATEGORIES =	lang

HOMEPAGE =	https://bellard.org/quickjs/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

COMPILER =	ports-gcc

MASTER_SITES =	https://bellard.org/quickjs/
EXTRACT_SUFX =	.tar.xz

MAKE_FLAGS =	CC="${CC}" AR="${AR}" LD="${LD}"

USE_GMAKE =	Yes

.include <bsd.port.mk>
