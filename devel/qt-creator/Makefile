# $OpenBSD: Makefile,v 1.15 2013/03/19 13:07:13 nigel Exp $

COMMENT =		cross-platform IDE for use with Qt
SHARED_ONLY =		Yes
V = 			3.5.0
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

SHARED_LIBS +=	Aggregation               0.0 # 0.0
SHARED_LIBS +=	CPlusPlus                 0.0 # 0.0
SHARED_LIBS +=	ExtensionSystem           0.0 # 0.0
SHARED_LIBS +=	GLSL                      0.0 # 0.0
SHARED_LIBS +=	LanguageUtils             0.0 # 0.0
SHARED_LIBS +=	QmlDebug                  0.0 # 0.0
SHARED_LIBS +=	QmlEditorWidgets          0.0 # 0.0
SHARED_LIBS +=	QmlJS                     0.0 # 0.0
SHARED_LIBS +=	QtcSsh                    0.0 # 0.0
SHARED_LIBS +=	Utils                     0.0 # 0.0
SHARED_LIBS +=	qbscore                   0.0 # 0.0
SHARED_LIBS +=	Clangbackendipc           1.0 # 1.0
SHARED_LIBS +=	Sqlite                    1.0 # 1.0
SHARED_LIBS +=	Timeline                  1.0 # 1.0
SHARED_LIBS +=	qbsqtprofilesetup         1.4 # 1.4

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

# XXX: is this still accurate?
# LGPL 2.1 with C++ headers exception (more permissive than LGPL)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c kvm m pthread
WANTLIB += GL Qt5Concurrent Qt5Core Qt5Designer Qt5DesignerComponents
WANTLIB += Qt5Gui Qt5Help Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Script Qt5Sql Qt5Svg Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5Xml

MASTER_SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt5

RUN_DEPENDS = 	devel/gdb \
		devel/gmake

PORTHOME =		${WRKDIR}

ALL_TARGET = 		all qch_docs

#NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}
GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	mkdir -p ${WRKDIR}/bin/bin
	ln -sf ${PREFIX}/lib/qt5/bin/qhelpgenerator ${WRKDIR}/bin/bin
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}

do-configure:
	cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake-qt5 -r #CONFIG+=debug

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qtcreator
	${INSTALL_DATA} ${WRKSRC}/share/doc/qtcreator/qtcreator.qch \
	    ${PREFIX}/share/doc/qtcreator/qtcreator.qch

.include <bsd.port.mk>
