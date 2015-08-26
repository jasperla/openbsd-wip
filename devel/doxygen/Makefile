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

MULTI_PACKAGES=	-main -gui
PSEUDO_FLAVORS=	no_gui bootstrap

COMMON_WANTLIB = c m pthread stdc++
WANTLIB-main += iconv z ${COMMON_WANTLIB}
WANTLIB-gui += QtCore QtGui QtXml ${COMMON_WANTLIB}

COMMON_LIB_DEPENDS = ${MODLIBICONV_LIB_DEPENDS}
LIB_DEPENDS-main = ${COMMON_LIB_DEPENDS}
LIB_DEPENDS-gui = ${COMMON_LIB_DEPENDS} ${MODQT_LIB_DEPENDS}
RUN_DEPENDS-gui = doxygen-${VERSION}:${BUILD_PKGPATH}

MODULES =	devel/cmake \
		converters/libiconv

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-gui}
CONFIGURE_ARGS+=-Dbuild_wizard:Bool=ON
MODULES+=	x11/qt4
.endif
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
# ld(1) fails
CONFIGURE_ARGS+=-Denglish_only:Bool=ON
.endif

BUILD_DEPENDS += devel/bison \
		 devel/flex

RUN_DEPENDS= 	print/ghostscript/gnu \
		math/graphviz


CONFIGURE_ARGS+=-Dbuild_doc:Bool=ON \
		-DFLEX_EXECUTABLE=${LOCALBASE}/bin/gflex

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
