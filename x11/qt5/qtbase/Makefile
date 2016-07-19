# $OpenBSD$

DISTNAME =		qtbase-opensource-src-${DIST_VERSION}

COMMENT-main =		C++ general-purpose toolkit
COMMENT-examples =	examples for Qt5
COMMENT-html =		offline HTML documentation for Qt5
COMMENT-mysql =		MySQL plugin for Qt5
COMMENT-psql =		PostgresSQL plugin for Qt5
COMMENT-qch =		offline QCH documentation for Qt5
COMMENT-sqlite2 =	SQLite 2.x plugin for Qt5
COMMENT-tds =		TDS plugin for Qt5

PKGNAME-mysql =		qt5-mysql-${VERSION}
PKGNAME-psql =		qt5-psql-${VERSION}
PKGNAME-sqlite2 =	qt5-sqlite2-${VERSION}
PKGNAME-tds =		qt5-tds-${VERSION}

PKG_ARCH-html =		*
PKG_ARCH-qch =		*

SHARED_LIBS +=	Qt5Concurrent		2.0
SHARED_LIBS +=	Qt5Core			2.0
SHARED_LIBS +=	Qt5DBus			2.0
SHARED_LIBS +=	Qt5Gui			2.0
SHARED_LIBS +=	Qt5Network		2.0
SHARED_LIBS +=	Qt5OpenGL		2.0
SHARED_LIBS +=	Qt5PrintSupport		2.0
SHARED_LIBS +=	Qt5Sql			2.0
SHARED_LIBS +=	Qt5Test			2.0
SHARED_LIBS +=	Qt5Widgets		2.0
SHARED_LIBS +=	Qt5Xml			2.0
SHARED_LIBS +=	Qt5EglDeviceIntegration	1.0
SHARED_LIBS +=	Qt5XcbQpa		1.0

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-main += cups dbus-1 execinfo fontconfig freetype gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB-main += gtk-x11-2.0 harfbuzz icudata icui18n icuuc iodbc jpeg
WANTLIB-main += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre16 png
WANTLIB-main += proxy pthread sqlite3 xcb xcb-glx xcb-icccm xcb-image
WANTLIB-main += xcb-keysyms xcb-randr xcb-render xcb-render-util xcb-shape
WANTLIB-main += xcb-shm xcb-sync xcb-xfixes xcb-xinerama xcb-xkb xkbcommon
WANTLIB-main += xkbcommon-x11 z

WANTLIB-examples =  ${MODGCC4_CPPWANTLIB} GL c m pthread
WANTLIB-examples += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL
WANTLIB-examples += Qt5PrintSupport Qt5Sql Qt5Test Qt5Widgets Qt5Xml

WANTLIB-mysql =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-mysql +=	crypto m pthread mysqlclient_r ssl z

WANTLIB-psql =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-psql +=		m pthread pq

WANTLIB-sqlite2 =	${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-sqlite2 +=	m pthread sqlite

WANTLIB-tds =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-tds +=		m pthread sybdb


MULTI_PACKAGES =	-main -examples -html -mysql -psql -qch -sqlite2 -tds

MODULES =		gcc4 devel/gettext

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			databases/iodbc \
			devel/atk \
			devel/harfbuzz \
			devel/libexecinfo \
			devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			print/cups,-libs \
			textproc/icu4c \
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

BUILD_DEPENDS =		geo/geoclue \
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

DESTDIRNAME =		INSTALL_ROOT

#MAKE_ENV =		LD_LIBRARY_PATH=${WRKBUILD}/qtbase/lib

CONFIGURE_STYLE =	simple

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_html no_qch no_tests
FLAVOR ?=

# readability macros
QT_BASEDIR =	${PREFIX}/lib/qt5
QT_INCDIR =	${PREFIX}/include/X11/qt5
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt5
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig
QT_CMAKEDIR =	${QT_BASEDIR}/cmake

# generic args
CONFIGURE_ARGS =	-confirm-license \
			-opensource \
			-rpath \
			-shared \
			-verbose

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-debug
.else
CONFIGURE_ARGS +=	-release
.endif

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
CONFIGURE_ARGS +=	-c++11 \
			-no-alsa \
			-no-journald \
			-no-mtdev \
			-opengl desktop \
			-system-harfbuzz \
			-system-proxies \
			-system-sqlite \
			-system-xcb

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
# AVX:    Sandy Bridge/Haswell, but not all models. AMD Bulldozer/Jaguar.
# SSE4.2: Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSE4.1: Core 2 (Penryn), Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSSE3:  Core 2 Duo, Atom, AMD Bulldozer/Bobcat.
# SSE3:   missing on very early 64-bit AMD.
CONFIGURE_ARGS +=	-no-sse4.1 -no-sse4.2 -no-avx -no-avx2
CONFIGURE_ARGS +=	-no-ssse3 -no-sse3
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	-no-sse2
.endif

.include <bsd.port.arch.mk>

# QtWebkit (at least, maybe others) plays dirty games with inter-target
# dependencies, so we'd better use the target qmake always creates
# first, named "first".
ALL_TARGET =		sub-src
FAKE_TARGET =		install
TEST_TARGET =		sub-tests

# Force re-running qmake before generating documentation
# to allow qdoc and qhelpgenerator do their work.
.if ${BUILD_PACKAGES:M-html} || ${BUILD_PACKAGES:M-qch}
ALL_TARGET +=		sub-qmake-qmake-docs-pro
.endif

.if ${BUILD_PACKAGES:M-html}
ALL_TARGET +=		html_docs
FAKE_TARGET +=		install_html_docs
.endif

.if ${BUILD_PACKAGES:M-qch}
ALL_TARGET +=		qch_docs
FAKE_TARGET +=		install_qch_docs
.endif

.if ${BUILD_PACKAGES:M-examples}
ALL_TARGET +=		sub-examples
.else
CONFIGURE_ARGS +=	-nomake examples
.endif

.if ${FLAVOR:Mno_tests}
NO_TEST =		Yes
CONFIGURE_ARGS +=	-nomake tests
.endif

PROGRAMS5 =	assistant designer linguist lrelease lupdate moc pixeltool \
		qcollectiongenerator qdbus qdoc qmake qml qtdiag rcc uic

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
TEST_DEPENDS =		audio/sox \
			kde4-minimal-*|kdebase-*:meta/kde4,-minimal

post-extract:
.if ${FLAVOR:Mno_examples}
	rm -f ${WRKDIST}/examples/examples.pro
.endif
.if ${FLAVOR:Mno_tests}
	rm -f ${WRKDIST}/tests/tests.pro
.endif

pre-configure:
	@gccbasedir=`ecpp -print-search-dirs | awk '/^install:/{print $$2}'`; \
	perl ${PORTSDIR}/infrastructure/bin/pkg_subst \
	    -D OPENBSD_INCDIR_PREPEND="$${gccbasedir}include" \
	    ${WRKSRC}/mkspecs/openbsd-g++/qmake.conf

.include <bsd.port.mk>
