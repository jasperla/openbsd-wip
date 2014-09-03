#	$OpenBSD$

COMMENT=	tool to analyse #includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-3.4.src
PKGNAME=	include-what-you-use-3.4
HOMEPAGE=	https://code.google.com/p/include-what-you-use/
MASTER_SITES=	http://include-what-you-use.com/downloads/
WRKDIST=	${WRKDIR}/include-what-you-use

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses m pthread stdc++
BUILD_DEPENDS=	devel/llvm/3.4

MODULES=		devel/cmake
CONFIGURE_ARGS=		-DLLVM_PATH=${LOCALBASE}

.include <bsd.port.mk>
