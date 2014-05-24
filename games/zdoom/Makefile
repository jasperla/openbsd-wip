#	$OpenBSD$

COMMENT=	enhanced port of the DOOM source code
CATEGORIES=	games x11
GITREV=		openal-2142e857a95789b87f5808bf7588675362421b75
DISTNAME=	rheit-zdoom-2142e85
PKGNAME=	zdoom-20131024
MASTER_SITES=	https://github.com/rheit/zdoom/tarball/openal/

HOMEPAGE=	http://zdoom.org

# 'doomlic.txt' and 'BUILDLIC.TXT' don't grant (m)any rights
# though the doom source was later relicensed under GPLv2
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL Xcursor bz2 c glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gthread-2.0
WANTLIB += intl jpeg m openal pthread stdc++ z xml2

LIB_DEPENDS=	audio/openal \
		devel/sdl \
		graphics/jpeg \
		multimedia/gstreamer-0.10/plugins-base \
		archivers/bzip2 \
		textproc/libxml

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DNO_GTK:Bool=True \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include -Dunix"

post-extract:
		cp ${FILESDIR}/wordexp.{c,h} ${WRKSRC}/src/sound/

do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/zdoom
		${INSTALL_DATA} ${WRKBUILD}/zdoom.pk3 ${PREFIX}/share/zdoom
		${INSTALL_PROGRAM} ${WRKBUILD}/zdoom ${PREFIX}/bin

.include <bsd.port.mk>
