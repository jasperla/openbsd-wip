# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

# TODO:
# - double-check license, especially additional licenses for submodules
# - import hidapi BEFORE this port
# - build seems to depend on devel/llvm

COMMENT =	emulator and debugger for Playstation 3

#DISTNAME =	???
#PKGNAME =	???

GH_ACCOUNT =	RPCS3
GH_PROJECT =	rpcs3
GH_TAGNAME =	v0.0.5

# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =	???

CATEGORIES =	emulators


MAINTAINER =	Thomas Frohwein <tfrohwein@fastmail.com>

#GPLv2
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

GSL =		fc5fce4f4f8d64fbda523d1b0d55115f5ca68774
CEREAL =	42a45b6e15fcbd1a3d65b033f5d4d0b2ef6c023d
PUGIXML =	257fbb4e1b09b0f1a6b2020ae2db190b87c8f9c7
ASMJIT =	673dcefaa048c5f5a2bf8b85daf8f7b9978d018a

MASTER_SITES0 =	https://github.com/Microsoft/GSL/archive/
MASTER_SITES1 =	https://github.com/USCiLab/cereal/archive/
MASTER_SITES2 =	https://github.com/zeux/pugixml/archive/
MASTER_SITES3 =	https://github.com/asmjit/asmjit/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GSL}.tar.gz:0 \
		${CEREAL}.tar.gz:1 \
		${PUGIXML}.tar.gz:2 \
		${ASMJIT}.tar.gz:3

MODULES =		devel/cmake \
			x11/qt5
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		comms/hidapi
#TEST_DEPENDS =		???

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL=		gnu
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS =	-DUSE_SYSTEM_LIBPNG=ON \
			-DUSE_VULKAN=OFF \
			-DUSE_SYSTEM_FFMPEG=ON

CONFIGURE_ENV =	Qt5_DIR=/usr/local/lib/qt5/cmake/Qt5

#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

#NO_BUILD =		Yes
#NO_TEST =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

post-extract:
	rmdir	${WRKSRC}/3rdparty/GSL \
		${WRKSRC}/3rdparty/cereal \
		${WRKSRC}/3rdparty/pugixml \
		${WRKSRC}/asmjit
	ln -s 	${WRKDIR}/GSL-${GSL}		${WRKSRC}/3rdparty/GSL
	ln -s	${WRKDIR}/cereal-${CEREAL}	${WRKSRC}/3rdparty/cereal
	ln -s	${WRKDIR}/pugixml-${PUGIXML}	${WRKSRC}/3rdparty/pugixml
	ln -s	${WRKDIR}/asmjit-${ASMJIT}	${WRKSRC}/asmjit

.include <bsd.port.mk>
