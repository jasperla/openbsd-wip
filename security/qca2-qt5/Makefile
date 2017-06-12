# $OpenBSD$
# separate port for Qt5 because it's too different from Qt4 case
COMMENT =	Qt Cryptographic Architecture

V =		2.1.3
DISTNAME =	qca-${V}
PKGNAME =	qca2-qt5-${V}
CATEGORIES =	security

SHARED_LIBS =	qca-qt5		0.0

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		Qt5Core c m pthread
EXTRACT_SUFX =		.tar.xz
MASTER_SITES =		${MASTER_SITE_KDE:=stable/qca/${V}/src/}

MODULES =		devel/cmake x11/qt5

CONFIGURE_ARGS =	-DBUILD_PLUGINS=none \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DQCA_SUFFIX=qt5 \
			-DQT4_BUILD=Off

LIBFNAME =		libqca-qt5.so.${LIBqca-qt5_VERSION}

post-install:
	cd ${PREFIX}/lib; ln -sf ${MODQT_LIBDIR}/${LIBFNAME}

.include <bsd.port.mk>
