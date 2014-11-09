# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

SHARED_ONLY =		Yes
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

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

SHARED_LIBS +=		Qt5Concurrent		0.0
SHARED_LIBS +=		Qt5Core			0.0
SHARED_LIBS +=		Qt5DBus			0.0
SHARED_LIBS +=		Qt5Gui			0.0
SHARED_LIBS +=		Qt5Network		0.0
SHARED_LIBS +=		Qt5OpenGL		0.0
SHARED_LIBS +=		Qt5PrintSupport		0.0
SHARED_LIBS +=		Qt5Qml			0.0
SHARED_LIBS +=		Qt5Quick		0.0
SHARED_LIBS +=		Qt5QuickParticles	0.0
SHARED_LIBS +=		Qt5QuickTest		0.0
SHARED_LIBS +=		Qt5QuickWidgets		0.0
SHARED_LIBS +=		Qt5SerialPort		0.0
SHARED_LIBS +=		Qt5Sql			0.0
SHARED_LIBS +=		Qt5Svg			0.0
SHARED_LIBS +=		Qt5Test			0.0
SHARED_LIBS +=		Qt5Widgets		0.0
SHARED_LIBS +=		Qt5X11Extras		0.0
SHARED_LIBS +=		Qt5Xml			0.0
SHARED_LIBS +=		Qt5XmlPatterns		0.0

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

LIB_DEPENDS =		databases/iodbc \
			devel/gperf \
			graphics/libwebp \
			print/cups,-libs \
			textproc/icu4c \
			x11/xkbcommon

# version change requires adjusting patches (at least)
LIB_DEPENDS +=		devel/libsoup

BUILD_DEPENDS =		devel/flex \
			devel/bison

# no leveldb dependency, requires -lmemenv

# (at least) qtwebkit plays dirty games with inter-target dependencies,
# we'd better use default rather than something explicit here.
ALL_TARGET =

MAKE_ENV =		PYTHON=${MODPY_BIN} \
			RUBY=${RUBY} \
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
CONFIGURE_ARGS =	-confirm-license \
			-force-debug-info \
			-opensource \
			-prefix ${PREFIX} \
			-rpath \
			-shared \
			-verbose \
			-no-c++11 \
			-no-alsa \
			-no-journald \
			-no-mtdev \
			-opengl desktop \
			-system-sqlite \
			-system-xcb \
			-L${X11BASE}/lib \
			-R${X11BASE}/lib

CONFIGURE_ENV =		MAKEFLAGS="-j ${MAKE_JOBS}" \
			PKG_CONFIG_PATH=${WRKDIR} \
			EXTRA_CPPFLAGS="-DLOCALBASE=\\\"${LOCALBASE}\\\" -DX11BASE=\\\"${X11BASE}\\\""

PSEUDO_FLAVORS =	no_examples no_tests
FLAVOR ?=		no_examples no_tests

.if ${FLAVOR:Mno_examples}
CONFIGURE_ARGS +=	-nomake examples
.endif
.if ${FLAVOR:Mno_tests}
NO_TEST =		Yes
CONFIGURE_ARGS +=	-nomake tests
.endif

PKG_ARCH-html =		*

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_TARGET =		check
TEST_DEPENDS =		kde4-*|kdebase-*:meta/kde4 \
			audio/sox

# TODO:
# 1. Support for OpenBSD sensors, using dummy sensors for now.
# 2. V4L2 support (look at the fswebcam for patched videodev2.h?).
# 3. MAKEFLAGS hack doesn't work for building qmake.

PATCHORIG =		.ports.orig

post-extract:
.if ${FLAVOR:Mno_examples}
	rm -f ${WRKDIST}/qtbase/examples/examples.pro
.endif
.if ${FLAVOR:Mno_tests}
	rm -f ${WRKDIST}/qtbase/tests/tests.pro
.endif

IGNORE_LINK_HEADERS_DIRS =	os-win32 win
pre-configure:
	# Python and Ruby are used for building only, those paths
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

foo:
	@for td in ${WRKSRC}/{,build/}qtwebkit/Source; do \
		cd $$td; \
		for d in *; do \
			test -d "$$d" || continue; \
			find "$$d" -name '*.h' -type f -mindepth 2 | \
			while read h; do \
				dst="$$d/$${h##*/}"; \
				if [ -h "$$dst" ]; then \
					echo rm -- "$$dst"; \
					rm -- "$$dst"; \
				elif [ -f "$$dst" ]; then \
					cmp -- "$$dst" "$$h"; \
					continue; \
				fi; \
				h=$${h#$$d/}; \
				for id in ${IGNORE_LINK_HEADERS_DIRS}; do \
					if [ X"$${h#?(*/)$$id/}" != X"$$h" ]; then \
						echo "    ignoring $$h"; \
						continue 2; \
					fi; \
				done; \
				echo ln -s -- "$$h" "$$dst"; \
				ln -s -- "$$h" "$$dst"; \
			done; \
		done; \
	done

.include <bsd.port.mk>
