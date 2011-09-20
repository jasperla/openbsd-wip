# $OpenBSD: Makefile,v 1.3 2011/03/14 09:15:34 sthen Exp $

COMMENT =		light RDF manipulation with LADSPA plugin support
DISTNAME =		swh-LRDF-6c42936
PKGNAME =		liblrdf-0.5.0
REVISION=		0

SHARED_LIBS =		lrdf	1.0	# 0.0

CATEGORIES =		textproc

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		crypto curl idn m raptor2 ssl xml2 xslt z

HOMEPAGE =		http://github.com/swh/LRDF/
MASTER_SITES =		https://github.com/swh/LRDF/tarball/6c4293641fd6394878ea3bc80b2d3d3e4776f279/
MODULES =		devel/gettext

BUILD_DEPENDS = 	audio/ladspa
LIB_DEPENDS =		textproc/raptor

USE_LIBTOOL =		Yes
AUTOCONF_VERSION = 	2.68
AUTOMAKE_VERSION =	1.11
CONFIGURE_STYLE =	autoconf automake gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@cd ${WRKBUILD} && env AUTOCONF_VERSION=2.68 AUTOMAKE_VERSION=1.11 ./autogen.sh

.include <bsd.port.mk>
