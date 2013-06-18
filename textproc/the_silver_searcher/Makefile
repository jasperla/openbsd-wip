# $OpenBSD: Makefile,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT = A code searching tool, focused on speed.

V=           0.14
DISTNAME=    the_silver_searcher-${V}
PKGNAME=     ${DISTNAME}
CATEGORIES=  textproc

HOMEPAGE=    https://github.com/ggreer/the_silver_searcher
MAINTAINER=  Florian Stinglmayr <fstinglmayr@gmail.com>

# Apache
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES= https://github.com/ggreer/the_silver_searcher/archive/
DISTFILES=    0.14.tar.gz
EXTRACT_SUFX= .tar.gz

BUILD_DEPENDS= devel/autoconf/2.59 devel/automake/1.9 devel/gmake devel/pcre
LIB_DEPENDS=   devel/pcre
WANTLIB+= c pcre pthread z

USE_GMAKE=   Yes
USE_LIBTOOL= Yes
# ag's autoconf is a bit weird. It requires patching of the
# build.sh build file to work properly. I am not a wizard with
# autotools so I have no idea how to fix it.
CONFIGURE_STYLE=   simple
CONFIGURE_SCRIPT=  build.sh
CONFIGURE_ENV=     AUTOCONF_VERSION=2.59 AUTOMAKE_VERSION=1.9

AUTOCONF_VERSION= 2.59
AUTOMAKE_VERSION= 1.9

.include <bsd.port.mk>
