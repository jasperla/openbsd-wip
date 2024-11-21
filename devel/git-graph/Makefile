COMMENT =	tool to show clear git graphs

VERSION =	0.6.0

SITES =		https://github.com/mlange-42/git-graph/
DISTFILES =	git-graph-{archive/refs/tags/}${VERSION}.tar.gz

DISTNAME =	git-graph-${VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/mlange-42/git-graph/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
WANTLIB +=	${MODCARGO_WANTLIB} git2

MODULES =	devel/cargo

LIB_DEPENDS +=	devel/libgit2/libgit2

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
