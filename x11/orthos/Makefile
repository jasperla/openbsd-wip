# $deck: Makefile,v 1.7 2010/10/07 09:14:51 dukzcry Exp $

COMMENT=		X11 Display Manager with animated OpenGL themes

VERSION=		0.2m
DISTNAME=		orthos
PKGNAME=		orthos-${VERSION}

CATEGORIES=		x11

HOMEPAGE=		http://e-x-a.org/?view=orthos
MAINTAINER=		dukzcry <lomka@gero.in>

# Tarball can be updated with latest -master sources,
# and port will become obsolete, so using own mirror.
# We are on commit:
# caa6c28d0822a5dbd90fb323631c3227ba92f6c3
MASTER_SITES=		http://dukzcry.cc/hlam/distfiles/ \
			http://exa.czweb.org/repos/

EXTRACT_SUFX=		.git.tar

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xmu GL GLU SDL drm freetype pthread stdc++ c m z

BUILD_DEPENDS=		::devel/scons, ::devel/git
LIB_DEPENDS=		::devel/sdl

USE_X11=		Yes
NO_BUILD=		Yes

SEDEXPR=		's,share/fonts/ttf-bitstream-vera/VeraMono,X11R6/lib/X11/fonts/TTF/DejaVuSansMono,g'
DOCS=			COPYING LICENSE README

post-extract:
	@cd ${WRKDIST}; git checkout -f
post-patch:
	@perl -pi -e ${SEDEXPR} ${WRKDIST}/skins/default.cpp
	@perl -pi -e ${SEDEXPR} ${WRKDIST}/skins/shards.cpp
do-configure:
	@cd ${WRKDIST}; scons
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/Attic/
	
	${INSTALL_DATA} ${WRKDIST}/orthos ${PREFIX}/share/orthos/Attic/
	${INSTALL_DATA} ${WRKDIST}/skins/*.so ${PREFIX}/share/orthos/Attic/
	${INSTALL_PROGRAM} ${WRKDIST}/oskintest ${PREFIX}/bin/
	
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/orthos/
	@cd ${WRKDIST}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/orthos/
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/
	${INSTALL_DATA} ${WRKDIST}/files/orthos.conf ${PREFIX}/share/orthos/examples/
	${INSTALL_SCRIPT} ${WRKDIST}/install.sh ${PREFIX}/share/orthos/
	@sed -e "/oskintest/d" -e "/skintest/d" -e "/skinload/d" -e "/settings.cpp/d" \
		${WRKDIST}/SConstruct > ${PREFIX}/share/orthos/SConstruct
	@mv ${WRKDIST}/skins/{default.cpp,shards.cpp} ${WRKDIST}/
	@mv ${WRKDIST}/src/settings.cpp ${WRKDIST}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/skins/
	${INSTALL_DATA} ${WRKDIST}/skins/{SConscript,*.cpp,*.h} ${PREFIX}/share/orthos/skins/
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/src/
	${INSTALL_DATA} ${WRKDIST}/src/{SConscript,*.cpp} ${PREFIX}/share/orthos/src/
	${INSTALL_DATA} ${WRKDIST}/*.cpp ${PREFIX}/share/orthos/Attic/
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthos/include/
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/share/orthos/include/
	
post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/orthos/README.OpenBSD
	@chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/orthos/README.OpenBSD

.include <bsd.port.mk>
