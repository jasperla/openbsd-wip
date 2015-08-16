# $OpenBSD: Makefile,v 1.32 2014/03/24 20:59:47 miod Exp $

COMMENT-main=	source code documentation generator tool
COMMENT-gui=	GUI front-end for doxygen

VERSION=	1.8.10
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}
FULLPKGNAME-gui=doxygen-gui-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ftp.stack.nl/pub/users/dimitri/ \
		ftp://ftp.stack.nl/pub/users/dimitri/

PSEUDO_FLAVORS=	no_gui bootstrap

#WANTLIB-gui = lib/qt4/QtCore

MODULES+=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

MODULES =	devel/cmake \
		x11/qt4

MULTI_PACKAGES=	-main -gui

BUILD_DEPENDS += devel/bison \
		 devel/flex \

RUN_DEPENDS= 	print/ghostscript/gnu

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

CONFIGURE_ARGS =	-Dbuild_wizard:Bool=ON \
			-Dbuild_search:Bool=ON

NO_TEST=	Yes

.include <bsd.port.mk>
