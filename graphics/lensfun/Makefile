# $OpenBSD: Makefile,v 1.9 2012/12/16 11:39:51 sthen Exp $

COMMENT=	library to adjust for photographic lens characteristics
DISTNAME=	lensfun-0.2.8

SHARED_LIBS=	lensfun		2.0
SHARED_LIBS+=	auxfun		0.0

CATEGORIES=	graphics
HOMEPAGE=	http://sourceforge.net/projects/lensfun/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c glib-2.0 m png pthread stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lensfun/}

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/doxygen>=1.7.2

LIB_DEPENDS=		devel/glib2 \
			graphics/png

CONFIGURE_ARGS=		-DBUILD_AUXFUN:Bool=Yes \
			-DBUILD_DOC:Bool=Yes \
			-DDOCDIR:Path=share/doc/lensfun

.include <bsd.port.arch.mk>

.if ${ARCH:Mi386} || ${ARCH:Mamd64}
# SSE presence is detected at run-time, no forced optimizations
CONFIGURE_ARGS+=	-DBUILD_FOR_SSE:Bool=Yes \
			-DBUILD_FOR_SSE2:Bool=Yes
.endif

.if ${NO_SHARED_LIBS} == "Yes"
CONFIGURE_ARGS+=	-DBUILD_STATIC:Bool=Yes
.else
CONFIGURE_ARGS+=	-DBUILD_STATIC:Bool=No
.endif

TEST_PROGS =		example tfun

# BSD-licensed CMake module from KDE distribution, slightly modified.
# Should be fed upstream to liblensfun.
post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/build/CMakeModules

do-test:
.for _p in ${TEST_PROGS}
	cd ${WRKBUILD}/tests && env HOME=${WRKDIR} ./${_p}
.endfor

post-install:
.for _p in ${TEST_PROGS}
	rm ${PREFIX}/bin/${_p}
.endfor

.include <bsd.port.mk>
