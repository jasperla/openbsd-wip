# $OpenBSD$

COMMENT =		friendly interactive shell

V =			2.5.0
DISTNAME =		fish-$V

CATEGORIES =		shells

HOMEPAGE =		http://fishshell.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c intl m ncurses pcre2-32 pthread

MASTER_SITES =		http://fishshell.com/files/$V/

MODULES =		lang/clang \
			lang/python

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/pcre2 \
			devel/gettext

RUN_DEPENDS =		misc/gnugetopt
TEST_DEPENDS =		${RUN_DEPENDS}

MODCLANG_ARCHS =        *
MODCLANG_LANGS =        c++

MODPY_ADJ_FILES =	share/tools/create_manpage_completions.py \
			share/tools/deroff.py \
			share/tools/web_config/webconfig.py

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-included-pcre2
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		SYSCONFDIR=${PREFIX}/share/examples/fish

TEST_TARGET =		test
TEST_FLAGS =		DESTDIR=${WRKBUILD}/testdir

pre-configure:
	sed -i 's/getopt/gnugetopt/' ${WRKSRC}/share/functions/*.fish

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/deroff.py
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/create_manpage_completions.py
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/web_config/webconfig.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fish
	mv ${DESTDIR}/etc/fish/config.fish ${PREFIX}/share/examples/fish/
	rm -Rf ${DESTDIR}/etc/fish

.include <bsd.port.mk>
