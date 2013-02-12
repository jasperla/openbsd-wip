# $OpenBSD: Makefile,v 1.9 2012/12/16 11:39:51 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	library to adjust for photographic lens characteristics
DISTNAME=	lensfun-0.2.7

SHARED_LIBS=	lensfun		2.0
SHARED_LIBS+=	auxfun		0.0

CATEGORIES=	graphics
HOMEPAGE=	http://lensfun.berlios.de/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 m png stdc++ z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=lensfun/}

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/doxygen>=1.7.2

LIB_DEPENDS=		devel/glib2 \
			graphics/png

CONFIGURE_ARGS+=	-DBUILD_AUXFUN:Bool=Yes \
			-DBUILD_DOC:Bool=Yes \
			-DBUILD_FOR_SSE:Bool=Yes \
			-DBUILD_FOR_SSE2:Bool=No \
			-DDOCDIR:Path=share/doc/lensfun

TEST_PROGS =		example tfun

# BSD-licensed CMake module from KDE distribution, slightly modified.
# Should be fed upstream to liblensfun.
post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/build/CMakeModules

do-regress:
.for _p in ${TEST_PROGS}
	cd ${WRKBUILD}/tests && ./${_p}
.endfor

post-install:
.for _p in ${TEST_PROGS}
	rm ${PREFIX}/bin/${_p}
.endfor

.include <bsd.port.mk>
