# $OpenBSD$
# separate port for Qt5 because it's too different from Qt4 case

COMMENT =	Qt Cryptographic Architecture

DISTNAME =	qca-2.1.0
PKGNAME =	qca2-qt5-2.1.0
CATEGORIES =	security

SHARED_LIBS =	qca-qt5		0.0

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		Qt5Core c m pthread

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/

MODULES =		devel/cmake x11/qt5
BUILD_DEPENDS =		devel/doxygen

CONFIGURE_ARGS =	-DBUILD_PLUGINS=none \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DQCA_SUFFIX=qt5 \
			-DQT4_BUILD=Off

LIBFNAME =		libqca-qt5.so.${LIBqca-qt5_VERSION}

post-install:
	cd ${PREFIX}/lib; ln -sf ${MODQT_LIBDIR}/${LIBFNAME}

.include <bsd.port.mk>
