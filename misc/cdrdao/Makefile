# $OpenBSD: Makefile,v 1.50 2019/07/12 20:47:48 sthen Exp $

COMMENT=	write audio/data CD-Rs in disk-at-once mode

DISTNAME= 	cdrdao-1.2.4
CATEGORIES=	audio misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cdrdao/}
EXTRACT_SUFX=	.tar.bz2
PATCHORIG=	.port.orig

HOMEPAGE=	http://cdrdao.sourceforge.net/

PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/paranoia ${WRKSRC}/scsilib/conf
CONFIGURE_ARGS+=	--with-posix-threads=no \
			--with-xdao=no \
			--with-scglib=yes
MAKE_ENV=		CCOM="${CC}"

FLAVORS=	audio
FLAVOR?=

.if ${FLAVOR:Maudio}
CONFIGURE_ARGS+=	--with-lame-lib=${LOCALBASE}/lib \
			--with-lame-include=${LOCALBASE}/include
LIB_DEPENDS+=		audio/libao \
			audio/lame \
			audio/libmad \
			audio/libvorbis
WANTLIB+=		ao mp3lame mad vorbisfile
.else
CONFIGURE_ARGS+=	--with-ogg-support=no \
			--with-mp3-support=no \
			--without-lame
.endif

.if ${MACHINE} != "i386" || ${CC} != "cc"
pre-configure:
	@ln -sf ${WRKSRC}/scsilib/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/scsilib/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

post-install:
	@strip ${PREFIX}/bin/cdrdao ${PREFIX}/bin/toc2cue
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
