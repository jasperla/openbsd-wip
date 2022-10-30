COMMENT=		minimalist IRC client

DISTNAME=		ii-2.0
CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/ii
MASTER_SITES=		http://dl.suckless.org/tools/
MASTER_SITES0=		${HOMEPAGE}/patches/

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c

NO_TEST=		Yes

FLAVORS=		ucspi
FLAVOR?=

# patches from http://tools.suckless.org/ii/patches
PATCH_DIST_STRIP=	-p1

.if ${FLAVOR} == "ucspi"
# adds unix client server programming interface support
PATCHFILES+=		${DISTNAME}-ucspi.diff:0
PATCH_LIST=		patch-* ucspipatch-*
RUN_DEPENDS=		net/ucspi-tools
.else
# adds ssl encryption support
PATCHFILES+=		${DISTNAME}-ssl.diff:0
PATCH_LIST=		patch-* sslpatch-*
WANTLIB+=		crypto ssl
.endif

SUPDISTFILES+=		${DISTNAME}-ssl.diff:0
SUPDISTFILES+=		${DISTNAME}-ucspi.diff:0

FAKE_FLAGS=		MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>
