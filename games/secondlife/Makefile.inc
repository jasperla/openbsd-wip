# $OpenBSD$

COMMENT=		"SecondLife Viewer ${_VCOM}"

DISTNAME=		slviewer-src-${V}
PKGNAME=		secondlife-viewer-${V}

CATEGORIES=		games

HOMEPAGE=		http://secondlife.com

MAINTAINER=		Todd T. Fries <todd@OpenBSD.org>

DISTFILES+=		${DISTNAME}${EXTRACT_SUFX} \
			SecondLife_i686_1_13_3_2.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU X11 c crypto expat fontconfig freetype m pthread
WANTLIB += ssl stdc++ z apr-1-mt aprutil-1-mt ogg xmlrpc-epi SDL
WANTLIB += db jpeg openjpeg vorbis
WANTLIB += vorbisenc vorbisfile curl
WANTLIB += gdk-x11-2.0 gobject-2.0 gtk-x11-2.0 glib-2.0

MASTER_SITES+=		${HOMEPAGE}/downloads/viewer/

BUILD_DEPENDS=		devel/boost \
			devel/apr-util,mt \
			graphics/jpeg \
			devel/sdl \
			audio/libvorbis \
			x11/gtk+2 \
			graphics/openjpeg \
			net/xmlrpc-epi \
			wipstuff/net/c-ares \
			multimedia/gstreamer-0.10/plugins-base \
			multimedia/gstreamer-0.10/plugins-base,-ogg \
			multimedia/gstreamer-0.10/plugins-base,-theora \
			multimedia/gstreamer-0.10/plugins-base,-vorbis \
			devel/bison

DESTDIRNAME=		ughDESTDIR

USE_X11=		Yes

WRKDIST=		${WRKDIR}/linden
WRKBUILD=		${WRKDIST}/indra

LLFILES=featuretable.txt releasenotes.txt lsl_guide.html gpu_table.txt
LLDIRS=app_settings character fonts help skins res-sdl

post-configure:
	cd ${WRKBUILD}; make depend

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/secondlife
	${INSTALL_DATA_DIR} ${PREFIX}/share/secondlife/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/newview/secondlife \
		${PREFIX}/share/secondlife/bin/do-not-directly-run-secondlife-bin
	sed 's,%PREFIX%,'${LOCALBASE}',g' \
		${WRKBUILD}/newview/linux_tools/wrapper.sh \
		> ${WRKBUILD}/wrapper.openbsd
	${INSTALL_SCRIPT}	${WRKBUILD}/wrapper.openbsd \
		${PREFIX}/bin/secondlife
	${INSTALL_SCRIPT}	${WRKBUILD}/newview/linux_tools/launch_url.sh \
		${PREFIX}/share/secondlife/launch_url.sh
	${INSTALL_DATA}	${WRKBUILD}/newview/linux_tools/client-readme.txt \
		${PREFIX}/share/secondlife/README-linux.txt
	${INSTALL_DATA}	${WRKBUILD}/newview/licenses-linux.txt \
		${PREFIX}/share/secondlife/licenses.txt
	${INSTALL_DATA}	${WRKBUILD}/newview/res/ll_icon.ico \
		${PREFIX}/share/secondlife/secondlife.ico
	ln -s ${LOCALBASE}/lib/X11/fonts/mscorefonts/times.ttf \
		${PREFIX}/share/secondlife/unicode.ttf
.for _f in ${LLFILES}
	${INSTALL_DATA} ${WRKBUILD}/newview/${_f} \
		${PREFIX}/share/secondlife/${_f}
.endfor
.for _d in ${LLDIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/secondlife/${_d}
	cd ${WRKBUILD}/newview; tar cf - ${_d} | \
		tar xf - -C ${PREFIX}/share/secondlife
.endfor
	${INSTALL_DATA} ${WRKDIST}/scripts/messages/message_template.msg \
		${PREFIX}/share/secondlife/app_settings/message_template.msg
	echo " " > ${PREFIX}/share/secondlife/gridargs.dat
	echo "-settings settings_firstlook.xml" \
		> ${PREFIX}/share/secondlife/gridargs.firstlook.dat
	echo "-settings settings_beta.xml --${GRID} -helperuri http://preview-${GRID}.secondlife.com/helpers/" \
		> ${PREFIX}/share/secondlife/gridargs.beta.dat
.for _f in static_data.db2 static_index.db2
	${INSTALL_DATA} ${WRKDIR}/SecondLife_i686_1_13_3_2/app_settings/${_f} \
		${PREFIX}/share/secondlife/app_settings/${_f}
.endfor
