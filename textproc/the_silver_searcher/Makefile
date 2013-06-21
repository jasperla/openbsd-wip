# $OpenBSD: Makefile,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT = code searching tool, with a focus on speed (ag)

DISTNAME=    the_silver_searcher-0.14
CATEGORIES=  textproc

HOMEPAGE=    https://github.com/ggreer/the_silver_searcher
MAINTAINER=  Florian Stinglmayr <fstinglmayr@gmail.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB+= c pcre pthread z

MASTER_SITES= http://pub.n0la.org/

BUILD_DEPENDS= ${MODGNU_AUTOCONF_DEPENDS} \
               ${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=   devel/pcre

CONFIGURE_STYLE= gnu

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9

NO_TEST= YES

.include <bsd.port.mk>
