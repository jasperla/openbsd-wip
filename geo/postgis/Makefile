# $OpenBSD: Makefile,v 1.12 2012/09/24 19:54:54 pea Exp $

SHARED_ONLY=	Yes

COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-2.0.1
CATEGORIES=	geo databases

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/


WANTLIB=	c crypto curl expat gdal geotiff geos geos_c gif idn intl \
		jasper jpeg json m png pq proj pthread ssl stdc++ tiff xml2 z

MODULES=        converters/libiconv

BUILD_DEPENDS=	textproc/libxslt

LIB_DEPENDS=	databases/postgresql \
		devel/json-c \
		devel/proj \
		geo/gdal \
		geo/geos \
		graphics/jasper

RUN_DEPENDS=	databases/postgresql,-server

USE_GMAKE=	Yes
CONFIGURE_ENV=	PGXS=1 \
		LDFLAGS='-L${LOCALBASE}/lib -pthread' \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/postgresql/contrib \
		--libdir=${PREFIX}/lib/postgresql

# Note on running regress
#
# - make sure you do not have a postgresql server currently running
# - as user _postgresql, in another terminal, run:
#     $ mkdir /tmp/pg && initdb -D /tmp/pg -U postgres && postgres -D /tmp/pg   
# - run make regress

#do-regress: install
#	cd ${WRKSRC}/regress && PGUSER=postgres ${MAKE_PROGRAM}


.include <bsd.port.mk>
