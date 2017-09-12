# $OpenBSD: Makefile,v 1.28 2017/07/30 17:52:32 espie Exp $

COMMENT =		cross-platform IDE for use with Qt
V = 			4.4.0
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

SHARED_LIBS +=	Aggregation               0.0 # 0.0
SHARED_LIBS +=	CPlusPlus                 1.0 # 0.0
SHARED_LIBS +=	ExtensionSystem           2.0 # 0.0
SHARED_LIBS +=	GLSL                      0.0 # 0.0
SHARED_LIBS +=	LanguageUtils             0.0 # 0.0
SHARED_LIBS +=	QmlDebug                  2.0 # 0.0
SHARED_LIBS +=	QmlEditorWidgets          0.0 # 0.0
SHARED_LIBS +=	QmlJS                     2.0 # 0.0
SHARED_LIBS +=	QtcSsh                    0.0 # 0.0
SHARED_LIBS +=	Utils                     2.0 # 0.0
SHARED_LIBS +=	qbscore                   2.0 # 0.0
SHARED_LIBS +=	Clangbackendipc           2.1 # 1.0
SHARED_LIBS +=	Sqlite                    1.1 # 1.0
SHARED_LIBS +=	Timeline                  2.1 # 1.0
SHARED_LIBS +=	qbsqtprofilesetup         1.4 # 1.4
SHARED_LIBS +=	Modeling                  1.0 # 1.0
SHARED_LIBS +=	FlameGraph                0.0 # 4.2

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt5 \
		devel/qmake

MODQMAKE_INSTALL_ROOT =		${PREFIX}

MODQMAKE_ARGS =		USE_SYSTEM_BOTAN=1

# qtcreator.sh is created with custom LINK?= in Makefile
MODQT5_USE_GCC4_MODULE =	No
COMPILER =	gcc

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/qt5/qtscript

RUN_DEPENDS =	devel/gdb \
		devel/gmake \
		${MODGCC4_CPPDEP} \
		x11/gtk+3,-guic \
		x11/qt5/qtwebkit \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtscript

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtscript \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		security/botan \
		devel/qbs

PORTHOME =		${WRKDIR}

ALL_TARGET =		all

NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

CONFIGURE_ENV =	QBS_INSTALL_DIR=${LOCALBASE}

GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor

.include <bsd.port.mk>
