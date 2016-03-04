# $OpenBSD$

COMMENT =		friendly interactive shell

V =			2.2.0
DISTNAME =		fish-$V

CATEGORIES =		shells

HOMEPAGE =		http://fishshell.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pthread stdc++

MASTER_SITES =		http://fishshell.com/files/$V/

MODULES =		devel/gettext \
			lang/python
RUN_DEPENDS =		misc/gnugetopt

MODPY_ADJ_FILES =	create_wajig_completions.py \
			share/tools/create_manpage_completions.py \
			share/tools/deroff.py \
			share/tools/web_config/webconfig.py


USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

TEST_TARGET =		test

pre-configure:
	sed -i 's/getopt/gnugetopt/' ${WRKSRC}/share/functions/*.fish

.include <bsd.port.mk>
