# $OpenBSD: Makefile,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT = code searching tool, with a focus on speed (ag)

V=           0.14
DISTNAME=    ${V}
PKGNAME=     the_silver_searcher-${V}
CATEGORIES=  textproc

HOMEPAGE=    https://github.com/ggreer/the_silver_searcher
MAINTAINER=  Florian Stinglmayr <fstinglmayr@gmail.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES= https://github.com/ggreer/the_silver_searcher/archive/

BUILD_DEPENDS= devel/autoconf/2.59 \
               devel/automake/1.9 \
               devel/pcre
LIB_DEPENDS=   devel/pcre
WANTLIB+= c pcre pthread z

CONFIGURE_STYLE=   simple
CONFIGURE_SCRIPT=  build.sh
CONFIGURE_ENV=     AUTOCONF_VERSION=2.59 AUTOMAKE_VERSION=1.9

NO_TEST= YES

WRKDIST=${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
