# $OpenBSD$

COMMENT=	quake
DISTNAME=	quakespasm-0.90.1
EXTRACT_SUFX=	.tgz
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quakespasm/}

HOMEPAGE=	http://quakespasm.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL c m mad ogg pthread vorbis vorbisfile

LIB_DEPENDS=	audio/libmad \
		audio/libvorbis \
		devel/sdl

WRKDIST=	${WRKDIR}/${DISTNAME}/Quake
USE_GMAKE=	Yes
ALL_TARGET=	release

DOCS=	Quakespasm.html Quakespasm-Music.txt Quakespasm.txt

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/quakespasm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/quakespasm
.for DOC in ${DOCS}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/${DOC} \
	    ${PREFIX}/share/doc/quakespasm/
.endfor

.include <bsd.port.mk>
