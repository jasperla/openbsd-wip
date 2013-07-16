# $OpenBSD: Makefile $

COMMENT =		

DISTNAME =		jpegexiforient-17022002
PKGNAME =		${DISTNAME}

CATEGORIES =	misc graphics

HOMEPAGE =		http://sylvana.net/jpegcrop/exif_orientation.html

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://sylvana.net/jpegcrop/

DISTFILES =		jpegexiforient.c exifautotran.txt
EXTRACT_ONLY =

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS = 	graphics/jpeg

INST_DIR = 		${PREFIX}/bin/

pre-install:
		cp /usr/ports/distfiles/jpegexiforient.c ${WRKSRC}
		cp /usr/ports/distfiles/exifautotran.txt ${WRKSRC}

do-build:
		cd ${WRKSRC} && \
			${CC} ${CFLAGS} jpegexiforient.c -o jpegexiforient 

do-install:
		${INSTALL_PROGRAM}	${WRKSRC}/jpegexiforient ${PREFIX}/bin/
		${INSTALL_PROGRAM}	${WRKSRC}/exifautotran.txt ${PREFIX}/bin/exifautotran

.include <bsd.port.mk>
