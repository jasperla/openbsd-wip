# $OpenBSD: Makefile,v 1.25 2016/09/02 22:22:07 ajacoutot Exp $

COMMENT=	command-line utility to rip and encode audio cds

DISTNAME=	abcde-2.8.1
CATEGORIES=	audio

HOMEPAGE=	http://abcde.einval.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://abcde.einval.com/download/

RUN_DEPENDS=	audio/cdparanoia \
		audio/cd-discid \
		audio/id3lib \
		audio/vorbis-tools \
		shells/bash \
		audio/p5-MusicBrainz-DiscID

NO_TEST=	Yes

pre-configure:
	sed -i "s,/bin/bash,/usr/bin/env bash," \
		${WRKSRC}/abcde ${WRKSRC}/cddb-tool
	sed -i "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/abcde

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/abcde ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/cddb-tool ${PREFIX}/bin
	# no man page for the following script
	${INSTALL_SCRIPT} ${WRKSRC}/abcde-musicbrainz-tool ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abcde.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cddb-tool.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abcde
	${INSTALL_DATA} ${WRKSRC}/abcde.conf ${PREFIX}/share/examples/abcde

.include <bsd.port.mk>
