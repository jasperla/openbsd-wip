# $OpenBSD$

COMMENT =		line oriented editor browser
GH_ACCOUNT =		CMB
GH_PROJECT =		edbrowse
GH_TAGNAME =		v3.6.1
CATEGORIES =		www

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curl mozjs-24 ncurses pcre pthread readline tidy

MODULES =		lang/clang
MODCLANG_LANGS =	c c++
MODCLANG_ARCHS =	*

LIB_DEPENDS =		net/curl \
			devel/spidermonkey \
			devel/pcre \
			www/tidy-html5

WRKSRC =		${WRKDIST}/src
MAKE_FILE =		${WRKSRC}/makefile.bsd
MAKE_FLAGS =		CXXFLAGS="${CXXFLAGS}" \
			JS_CXXFLAGS="`pkg-config --cflags mozjs-24`" \
			LFLAGS="${LDFLAGS}"

CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/edbrowse ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/doc/man-edbrowse-debian.1 \
				${PREFIX}/man/man1/edbrowse.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/edbrowse
	${INSTALL_DATA} ${WRKDIST}/doc/usersguide.html \
			${WRKDIST}/doc/usersguide_fr.html \
				 ${PREFIX}/share/doc/edbrowse/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/edbrowse
	${INSTALL_DATA} ${WRKDIST}/doc/sample.ebrc \
			${WRKDIST}/doc/sample_fr.ebrc \
				${PREFIX}/share/examples/edbrowse/

.include <bsd.port.mk>
