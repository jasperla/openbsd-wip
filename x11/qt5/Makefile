# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

SHARED_ONLY =		Yes
ONLY_FOR_ARCHS =	${GCC4_ARCHS}
IGNORE-html =		qdoc segfaults

VERSION =		5.3.2
DISTNAME =		qt-everywhere-opensource-src-${VERSION}

COMMENT-debug =		debugging additions for Qt5
COMMENT-main =		C++ general-purpose toolkit
COMMENT-examples =	examples for Qt5
COMMENT-html =		offline HTML documentation for Qt5
COMMENT-mysql =		MySQL plugin for Qt5
COMMENT-postgresql =	PostgresSQL plugin for Qt5
COMMENT-sqlite2 =	SQLite 2.x plugin for Qt5
COMMENT-tds =		TDS plugin for Qt5

PKGNAME-debug =		qt5-debug-${VERSION}
PKGNAME-main =		qt5-${VERSION}
PKGNAME-examples =	qt5-examples-${VERSION}
PKGNAME-html =		qt5-html-${VERSION}
PKGNAME-mysql =		qt5-mysql-${VERSION}
PKGNAME-postgresql =	qt5-postgresql-${VERSION}
PKGNAME-sqlite2 =	qt5-sqlite2-${VERSION}
PKGNAME-tds =		qt5-postgresql-${VERSION}

PKG_ARCH-html =		*

SHARED_LIBS =		Enginio			0.0
SHARED_LIBS +=		Qt5Bluetooth		0.0
SHARED_LIBS +=		Qt5CLucene		0.0
SHARED_LIBS +=		Qt5Concurrent		0.0
SHARED_LIBS +=		Qt5Core			0.0
SHARED_LIBS +=		Qt5DBus			0.0
SHARED_LIBS +=		Qt5Declarative		0.0
SHARED_LIBS +=		Qt5Designer		0.0
SHARED_LIBS +=		Qt5DesignerComponents	0.0
SHARED_LIBS +=		Qt5Gui			0.0
SHARED_LIBS +=		Qt5Help			0.0
SHARED_LIBS +=		Qt5Multimedia		0.0
SHARED_LIBS +=		Qt5MultimediaQuick_p	0.0
SHARED_LIBS +=		Qt5MultimediaWidgets	0.0
SHARED_LIBS +=		Qt5Network		0.0
SHARED_LIBS +=		Qt5Nfc			0.0
SHARED_LIBS +=		Qt5OpenGL		0.0
SHARED_LIBS +=		Qt5Positioning		0.0
SHARED_LIBS +=		Qt5PrintSupport		0.0
SHARED_LIBS +=		Qt5Qml			0.0
SHARED_LIBS +=		Qt5Quick		0.0
SHARED_LIBS +=		Qt5QuickParticles	0.0
SHARED_LIBS +=		Qt5QuickTest		0.0
SHARED_LIBS +=		Qt5QuickWidgets		0.0
SHARED_LIBS +=		Qt5Script		0.0
SHARED_LIBS +=		Qt5ScriptTools		0.0
SHARED_LIBS +=		Qt5Sensors		0.0
SHARED_LIBS +=		Qt5SerialPort		0.0
SHARED_LIBS +=		Qt5Sql			0.0
SHARED_LIBS +=		Qt5Svg			0.0
SHARED_LIBS +=		Qt5Test			0.0
SHARED_LIBS +=		Qt5WebKit		0.0
SHARED_LIBS +=		Qt5WebKitWidgets	0.0
SHARED_LIBS +=		Qt5WebSockets		0.0
SHARED_LIBS +=		Qt5Widgets		0.0
SHARED_LIBS +=		Qt5X11Extras		0.0
SHARED_LIBS +=		Qt5Xml			0.0
SHARED_LIBS +=		Qt5XmlPatterns		0.0
SHARED_LIBS +=		qgsttools_p		0.0

# -examples or -tests?
SHARED_LIBS +=		fftreal			0.0
SHARED_LIBS +=		gruesensor		0.0

CATEGORIES =		x11 devel
HOMEPAGE =		http://www.qt-project.org/
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1 for code; FDLv1.3 for documentation
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

MULTI_PACKAGES =	-main -debug -examples -html -mysql -postgresql -sqlite2 -tds

MASTER_SITES =		http://master.qt-project.org/archive/qt/${VERSION:R}/${VERSION}/single/

MODULES =		gcc4 devel/gettext perl lang/python lang/ruby
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS =		databases/iodbc \
			devel/gperf \
			devel/libsoup \
			graphics/libwebp \
			print/cups,-libs \
			textproc/icu4c \
			x11/xkbcommon

# Not used in Qt itself (implementation considered unstable),
# but used in QtWebKit.
LIB_DEPENDS +=		devel/harfbuzz

# QtWebKit & Co. requirements
BUILD_DEPENDS =		devel/flex \
			devel/bison

DESTDIRNAME =		INSTALL_ROOT

MAKE_ENV =		PYTHON=${MODPY_BIN} \
			RUBY=${RUBY} \
			REAL_BUILD_ROOT=${WRKBUILD} \
			OPENBSD_CPPFLAGS="-isystem ${WRKDIR}/gcc-include"

MAKE_FLAGS =		-j ${MAKE_JOBS} \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}
.for _l _v in ${SHARED_LIBS}
  MAKE_FLAGS +=		LIB${_l}_VERSION=${_v}
.endfor

# qmake supports so-called "shadow" builds: it's like normal
# out-of-source build but build directory is required to be located
# under source root.
SEPARATE_BUILD =	Yes
WRKBUILD =		${WRKSRC}/build

CONFIGURE_STYLE =	simple

# readability macros
QT_BASEDIR =	${PREFIX}/lib/qt5
QT_INCDIR =	${PREFIX}/include/X11/qt5
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt5
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig

# generic args
CONFIGURE_ARGS =	-confirm-license \
			-force-debug-info \
			-opensource

# paths
CONFIGURE_ARGS +=	-sysconfdir ${SYSCONFDIR} \
			-prefix ${QT_BASEDIR} \
			-plugindir ${QT_PLUGINSDIR} \
			-libdir ${QT_BASEDIR} \
			-headerdir ${QT_INCDIR} \
			-examplesdir ${QT_EXAMPLES} \
			-docdir ${QT_DOC} \
			-datadir ${QT_BASEDIR} \
			-bindir ${QT_BINDIR} \
			-R${X11BASE}/lib \
			-L${X11BASE}/lib

# other options
CONFIGURE_ARGS +=	-rpath \
			-shared \
			-verbose \
			-no-c++11 \
			-no-alsa \
			-no-journald \
			-no-mtdev \
			-opengl desktop \
			-system-sqlite \
			-system-xcb \

CONFIGURE_ENV =		MAKE=make \
			MAKEFLAGS="-j ${MAKE_JOBS}" \
			EXTRA_CPPFLAGS="-DLOCALBASE=\\\"${LOCALBASE}\\\" -DX11BASE=\\\"${X11BASE}\\\""

PSEUDO_FLAVORS =	no_examples no_html no_tests
FLAVOR ?=		no_html

.include <bsd.port.arch.mk>

# QtWebkit (at least, maybe others) plays dirty games with inter-target
# dependencies, so we'd better use the target qmake always creates
# first, named "first".
ALL_TARGET =		first
.if ${BUILD_PACKAGES:M-html}
ALL_TARGET +=		html_docs
.endif

.if !${BUILD_PACKAGES:M-examples}
CONFIGURE_ARGS +=	-nomake examples
.endif

.if ${FLAVOR:Mno_tests}
NO_TEST =		Yes
CONFIGURE_ARGS +=	-nomake tests
.endif

PROGRAMS5 =	assistant designer linguist lrelease lupdate moc pixeltool \
		qdbus qdoc qmake qml qtdiag rcc uic

# still need to check if those should get it into ${PREFIX}/bin
PROGRAMS_IGN =	lconvert \
		qcollectiongenerator \
		qdbuscpp2xml \
		qdbusviewer \
		qdbusxml2cpp \
		qdoc \
		qhelpconverter \
		qhelpgenerator \
		qlalr \
		qml \
		qml1plugindump \
		qmlbundle \
		qmlimportscanner \
		qmlmin \
		qmlplugindump \
		qmlprofiler \
		qmlscene \
		qmltestrunner \
		qmlviewer \
		qtdiag \
		qtpaths \
		syncqt.pl \
		xmlpatterns \
		xmlpatternsvalidator

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_TARGET =		check
TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS} \
			audio/sox \
			kde4-*|kdebase-*:meta/kde4

# TODO:
# 1. Support for OpenBSD sensors, using dummy sensors for now.
# 2. V4L2 support (look at the fswebcam for patched videodev2.h?).

PATCHORIG =		.ports.orig

SUBST_VARS =		VERSION

post-extract:
.if ${FLAVOR:Mno_examples}
	rm -f ${WRKDIST}/qtbase/examples/examples.pro
.endif
.if ${FLAVOR:Mno_tests}
	rm -f ${WRKDIST}/qtbase/tests/tests.pro
.endif

post-install:
	# programs
.for p in ${PROGRAMS5}
	ln -sf ../lib/qt5/bin/$p ${PREFIX}/bin/$p-qt5
.endfor
	# this helps qdbuscpp2xml
	#cd ${QT_BINDIR} && ln -sf moc moc-qt5
.for l v in ${SHARED_LIBS}
	! test -f ${PREFIX}/lib/qt5/lib$l.so.$v || \
	    ln -sf qt5/lib$l.so.$v ${PREFIX}/lib
.endfor
	# cleanup
	rm -f share/qt5/mkspecs/openbsd-g++/qmake.conf${PATCHORIG}
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

IGNORE_LINK_HEADERS_DIRS =	os-win32 win
pre-configure:
	# Python and Ruby are used for building mainly, those paths
	# do not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

	cd ${WRKSRC}; ${MODPY_BIN_ADJ} \
		`find . -name '*.py'` \
		`egrep -Rl '(env |bin/)python' qtwebkit/Tools` \
		qtscript/src/3rdparty/javascriptcore/JavaScriptCore/wscript \
		qtwebkit/Source/WebCore/inspector/generate-inspector-protocol-version \
		qtwebkit/Source/WebCore/html/parser/create-html-entity-table

	cd ${WRKSRC}; ${MODRUBY_RUBY_ADJ} \
		`find qtwebkit -name '*.rb'` \
		qtwebkit/Tools/Scripts/check-for-webkit-framework-include-consistency \
		qtwebkit/Tools/Scripts/display-profiler-output \
		qtwebkit/Tools/Scripts/check-for-inappropriate-macros-in-external-headers \
		qtwebkit/Tools/Scripts/roll-over-ChangeLogs \
		qtwebkit/Tools/Scripts/check-for-inappropriate-files-in-framework \
		qtwebkit/Tools/Scripts/test-webkitruby \
		qtwebkit/Tools/Scripts/clean-header-guards \
		qtwebkit/Tools/Scripts/bencher \
		qtwebkit/Source/WebKit/WebKit.vcxproj/WebKitExportGenerator/make-export-file-generator \
		qtwebkit/Source/WebCore/make-export-file-generator \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntDesiredOffsets/build-LLIntDesiredOffsets.sh \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntAssembly/build-LLIntAssembly.sh

	cd ${WRKSRC}; perl -pi.otheradj \
		-e 's,/usr/bin/(env )?python\b,${MODPY_BIN},g;' \
		-e 's,/usr/bin/(env )?ruby\b,${RUBY},g;' \
		-e 's,(/usr)?/bin/(env )?bash\b,/bin/ksh,g;' \
		qtdeclarative/tests/auto/qml/runall.sh \
		qtmultimedia/tests/auto/unit/qwavedecoder/data/gendata.sh \
		qtscript/util/mkdist-javascriptcore \
		qtwebkit/Tools/BuildSlaveSupport/gtk/pulseaudio/run \
		qtwebkit/Tools/Scripts/old-run-webkit-tests \
		qtwebkit/Tools/Scripts/run-webkit-websocketserver \
		qtwebkit/Tools/Scripts/webkitpy/common/system/executive_unittest.py \
		qtxmlpatterns/src/xmlpatterns/parser/createParser.sh \
		qtgraphicaleffects/tools/pngdumper/pngdumper.sh

	cd ${WRKSRC}; perl -pi.symname \
		-e 's/^__/_/;' \
		qtscript/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.order \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.order

	cd ${WRKSRC}/qtwebkit/Tools/qmake/config.tests; perl -pi.objdir \
		-e 's/^OBJECTS_DIR/#$$&/;' \
		*/*.pro

	@gccbasedir=`echo ${LOCALBASE}/lib/gcc/*-openbsd${OSREV}/${MODGCC4_VERSION}.*`; \
	cd ${WRKSRC}/qtwebkit/Source/WebCore; \
	for f in $$gccbasedir/include/*; do \
		echo ln -sf $$f >&2; \
		ln -sf $$f; \
	done;

.include <bsd.port.mk>
