# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		Sega Genesis/Megadrive dev kit

DISTNAME =		sgdk094
EXTRACT_SUFX =		.7z
#PKGNAME =		sgdk-0.94

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/sgdk/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

MASTER_SITES =		https://sgdk.googlecode.com/files/

BUILD_DEPENDS =		devel/m68k-elf/binutils \
			devel/m68k-elf/gcc
RUN_DEPENDS =		${BUILD_DEPENDS}

USE_GMAKE =		Yes
#USE_GROFF =		Yes

pre-extract:
	mkdir -p ${WRKSRC}

do-extract:
	cd ${WRKSRC} && 7z x ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

MAKE_ENV +=	GDK=${WRKSRC} WRKBUILD=${WRKBUILD}
SIMPLE_TOOLS =	bintos pcmtoraw sizebnd
build-tools:
	rm -f ${WRKSRC}/bin/*.{exe,dll}
.for i in ${SIMPLE_TOOLS}
	cd ${WRKSRC}/bin && ${CC} ${CFLAGS} -o ${i} \
		${WRKSRC}/tools/${i}/src/${i}.c
.endfor
	cd ${WRKSRC}/bin && ${CC} ${CFLAGS} -o wavtoraw \
		${WRKSRC}/tools/wavtoraw/src/wavtoraw.c -lm

do-build: build-tools
	cd ${WRKSRC} && env ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f makelib.gen

#do-install:
#	${INSTALL_DATA_DIR

.include <bsd.port.mk>
