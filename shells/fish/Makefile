# $OpenBSD$

COMMENT =		friendly interactive shell

V =			2.3.1
DISTNAME =		fish-$V

CATEGORIES =		shells

HOMEPAGE =		http://fishshell.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c execinfo intl m ncurses pcre2-32 pthread stdc++

MASTER_SITES =		http://fishshell.com/files/$V/

MODULES =		lang/python
BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/pcre2 \
			devel/libexecinfo \
			devel/gettext
RUN_DEPENDS =		misc/gnugetopt
TEST_DEPENDS =		${RUN_DEPENDS}

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fish
	mv ${DESTDIR}/etc/fish/config.fish ${PREFIX}/share/examples/fish/
	rm -Rf ${DESTDIR}/etc/fish

.include <bsd.port.mk>
