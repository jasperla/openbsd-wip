# $deck: Makefile,v 1.3 2010/10/04 10:34:53 dukzcry Exp $

USE_SYSTRACE=		Yes

COMMENT=		CD/DVD burning shell script

DISTNAME=		bashburn-3.0.1

CATEGORIES=		multimedia

HOMEPAGE=		http://bashburn.dose.se

MAINTAINER=		Sideris Michael <msid@daemons.gr>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# This project moved from sourceforge to it's own platfrom and provides crappy PHP-download system's
# links which aren't acceptable by OpenBSD ports system. So using handy-made mirror for download.
MASTER_SITES=		http://dukzcry.cc/hlam/distfiles/

FLAVORS=		audio
FLAVOR?=

RUN_DEPENDS=		:bash-*:shells/bash \
			:cdrdao-*:misc/cdrdao \
			:cdrtools-*:sysutils/cdrtools \
			:dvd+rw-tools-*:sysutils/dvd+rw-tools

.if ${FLAVOR:L:Maudio}
RUN_DEPENDS+=		:cdparanoia-*:audio/cdparanoia \
			:lame-*:audio/lame \
			:vorbis-tools-*:audio/vorbis-tools \
			:flac-*:audio/flac \
			:normalize-*:audio/normalize \
			:mpg123-*:audio/mpg123
.endif
			
NO_BUILD=		Yes

DOCS=			COPYING CREDITS ChangeLog FAQ HOWTO README
CONVERT=		${WRKDIST}/convert

do-configure:
	@sed -e 's,bin/bash,usr/local/bin/bash,g' -e 's,@@BBROOTDIR@@,/usr/local/bashburn,g' \
		${WRKDIST}/BashBurn.sh > ${WRKDIST}/BashBurn.sh.tmp
	@mv ${WRKDIST}/BashBurn.sh.tmp ${WRKDIST}/BashBurn.sh
	
# OpenBSD use different syntax of sleep command
	@sed '/\(\t*sleep *[0-9]\)\(s\$\)/s//\1/' ${CONVERT}/convert_flacs.sh \
		> ${CONVERT}/convert_flacs.sh.tmp
	@mv ${CONVERT}/convert_flacs.sh.tmp ${CONVERT}/convert_flacs.sh 
	@sed '/\(\t*sleep *[0-9]\)\(s\$\)/s//\1/' ${CONVERT}/convert_mp3s.sh \
		> ${CONVERT}/convert_mp3s.sh.tmp
	@mv ${CONVERT}/convert_mp3s.sh.tmp ${CONVERT}/convert_mp3s.sh
	@sed '/\(\t*sleep *[0-9]\)\(s\$\)/s//\1/' ${CONVERT}/convert_audio.sh \
		> ${CONVERT}/convert_audio.sh.tmp
	@mv ${CONVERT}/convert_audio.sh.tmp ${CONVERT}/convert_audio.sh

pre-install:
	@sed -f ${WRKDIST}/bashburn_man/bashburn.sed ${WRKDIST}/bashburn_man/bashburn.template \
		> ${WRKDIST}/bashburn.1
	
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bashburn
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bashburn
	@cd ${WRKSRC}/docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/bashburn
	${INSTALL_SCRIPT} ${WRKDIST}/BashBurn.sh ${PREFIX}/bashburn
	${INSTALL_MAN} ${WRKDIST}/bashburn.1 ${PREFIX}/man/man1
	@cp -R ${WRKDIST}/{burning,config,convert,func,lang,menus,misc} ${PREFIX}/bashburn
	@ln -sf ${TRUEPREFIX}/bashburn/BashBurn.sh ${PREFIX}/bin/bashburn

.include <bsd.port.mk>
