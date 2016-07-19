# $OpenBSD: Makefile,v 1.51 2016/03/20 15:58:26 naddy Exp $

DISTNAME =		qtwebkit-opensource-src-${VERSION}

COMMENT-main =		old Webkit integration framework for Qt

SHARED_LIBS +=	Qt5WebKit		1.1
SHARED_LIBS +=	Qt5WebKitWidgets	1.1

CATEGORIES =		www

# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -examples -html -qch

MASTER_SITES =		http://download.qt.io/community_releases/${VERSION:R}/${VERSION}/

MODULES =		gcc4 devel/gettext perl lang/python lang/ruby
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/openal \
			audio/pulseaudio \
			databases/iodbc \
			devel/atk \
			devel/harfbuzz \
			devel/libexecinfo \
			devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			graphics/jasper \
			graphics/libmng \
			graphics/libwebp \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			print/cups,-libs \
			textproc/icu4c \
			textproc/libxslt \
			x11/gtk+2 \
			x11/xkbcommon

LIB_DEPENDS-examples =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP}

LIB_DEPENDS-html =

LIB_DEPENDS-mysql =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/mariadb

LIB_DEPENDS-psql =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/postgresql

LIB_DEPENDS-qch =

LIB_DEPENDS-sqlite2 =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/sqlite

LIB_DEPENDS-tds =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/freetds

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			devel/libsoup \
			geo/geoclue \
			x11/dbus

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			geo/geoclue \
			x11/dbus
RUN_DEPENDS-examples =
RUN_DEPENDS-html =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =
RUN_DEPENDS-qch =
RUN_DEPENDS-sqlite2 =
RUN_DEPENDS-tds =

MAKE_ENV =		NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}

MAKE_FLAGS =		PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_html no_tests
FLAVOR ?=

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS} \
			audio/sox \
			kde4-minimal-*|kdebase-*:meta/kde4,-minimal

PATCHORIG =		.ports.orig

pre-configure:
	# Python and Ruby are used for building mainly, those paths
	# do not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

	cd ${WRKSRC}; ${MODPY_BIN_ADJ} \
		`find . -name '*.py'` \
		`egrep -Rl '(env |bin/)python' Tools` \
		Source/WebCore/inspector/generate-inspector-protocol-version \
		Source/WebCore/html/parser/create-html-entity-table

	cd ${WRKSRC}; ${MODRUBY_RUBY_ADJ} \
		`find . -name '*.rb'` \
		Tools/Scripts/check-for-webkit-framework-include-consistency \
		Tools/Scripts/display-profiler-output \
		Tools/Scripts/check-for-inappropriate-macros-in-external-headers \
		Tools/Scripts/roll-over-ChangeLogs \
		Tools/Scripts/check-for-inappropriate-files-in-framework \
		Tools/Scripts/test-webkitruby \
		Tools/Scripts/clean-header-guards \
		Tools/Scripts/bencher \
		Source/WebKit/WebKit.vcxproj/WebKitExportGenerator/make-export-file-generator \
		Source/WebCore/make-export-file-generator \
		Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntDesiredOffsets/build-LLIntDesiredOffsets.sh \
		Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntAssembly/build-LLIntAssembly.sh

	cd ${WRKSRC}; perl -pi.otheradj \
		-e 's,/usr/bin/(env )?python\b,${MODPY_BIN},g;' \
		-e 's,/usr/bin/(env )?ruby\b,${RUBY},g;' \
		-e 's,(/usr)?/bin/(env )?bash\b,/bin/ksh,g;' \
		Tools/BuildSlaveSupport/gtk/pulseaudio/run \
		Tools/Scripts/old-run-webkit-tests \
		Tools/Scripts/run-webkit-websocketserver \
		Tools/Scripts/webkitpy/common/system/executive_unittest.py

	cd ${WRKSRC}; perl -pi.symname \
		-e 's/^__/_/;' \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.order

	cd ${WRKSRC}/Tools/qmake/config.tests; perl -pi.objdir \
		-e 's/^OBJECTS_DIR/#$$&/;' \
		*/*.pro

.include <bsd.port.mk>
