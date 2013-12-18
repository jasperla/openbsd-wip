# $OpenBSD: Makefile,v 1.15 2013/03/19 13:07:13 nigel Exp $

BROKEN-powerpc =	qdoc3 goes into an infinite loop

COMMENT =		cross-platform IDE for use with Qt
SHARED_ONLY =		Yes
V = 			2.8.1
DISTNAME =		qt-creator-${V}-src
PKGNAME =		qt-creator-${V}

SHARED_LIBS =	Aggregation		0.0
SHARED_LIBS +=	CPlusPlus		0.0
#SHARED_LIBS +=	DebuggingHelper		0.0
SHARED_LIBS +=	ExtensionSystem		0.0
SHARED_LIBS +=	GLSL			0.0 # 1.0
SHARED_LIBS +=	LanguageUtils		0.0 # 1.0
SHARED_LIBS +=	QmlDebug		0.0 # 1.0
SHARED_LIBS +=	QmlEditorWidgets	0.0 # 1.0
SHARED_LIBS +=	QmlJS			0.0 # 1.0
#SHARED_LIBS +=	QtConcurrent		0.0
SHARED_LIBS +=	QtcSsh			0.0 # 1.0
SHARED_LIBS +=	Utils			0.0
SHARED_LIBS +=	qbscore			0.0 # 1.0
SHARED_LIBS +=  zeroconf		0.0 # 1.0

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	http://qt-project.org/doc/qtcreator-2.8/

# LGPL 2.1 with C++ headers exception (more permissive than LGPL)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread stdc++
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	lib/qt4/QtDeclarative lib/qt4/QtDesigner>=7
WANTLIB +=	lib/qt4/QtDesignerComponents>=7
WANTLIB +=	lib/qt4/QtGui>=8 lib/qt4/QtHelp lib/qt4/QtNetwork>=7
WANTLIB +=	lib/qt4/QtScript lib/qt4/QtSql>=7 lib/qt4/QtSvg>=7
WANTLIB +=	lib/qt4/QtXml>=7 lib/qt4/QtXmlPatterns lib/qt4/QtWebKit

MASTER_SITES =	http://download.qt-project.org/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt4

RUN_DEPENDS = 	devel/gdb \
		devel/gmake \
		x11/gtk+2,-guic

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

ALL_TARGET = 		all qch_docs

#NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}
GDB_ADJ_FILES = \
	src/plugins/debugger/debuggerkitinformation.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	mkdir -p ${WRKDIR}/bin/tools/qdoc3
	mkdir -p ${WRKDIR}/bin/bin
	ln -sf ${PREFIX}/lib/qt4/bin/qdoc3 ${WRKDIR}/bin/tools/qdoc3
	ln -sf ${PREFIX}/lib/qt4/bin/qhelpgenerator ${WRKDIR}/bin/bin
	cd ${WRKSRC}; perl -pi -e 's,"gdb","egdb",g' ${GDB_ADJ_FILES}

do-configure:
	cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 ${WRKSRC}/qtcreator.pro #CONFIG+=debug

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor

.include <bsd.port.mk>
