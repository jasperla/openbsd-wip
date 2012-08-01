# $OpenBSD$

COMMENT =		Trinity Desktop Environment, extra language bindings

DISTNAME =		kdebindings-${TDE_V}

SHARED_LIBS +=  kjsembed                  3.0 # 1.0
SHARED_LIBS +=  smokekde                  5.0 # 3.2
SHARED_LIBS +=  smokeqt                   5.0 # 3.2

CATEGORIES =		x11 x11/tde devel

WANTLIB += DCOP GL GLU ICE SM X11 Xext c expat fontconfig freetype
WANTLIB += kdecore kdefx kdeprint kdeui khtml kio kjs kmdi knewstuff
WANTLIB += kparts kscript kspell ktexteditor kutils m png pthread
WANTLIB += qui stdc++ tqt xcb z ${MODRUBY_WANTLIB}

MODULES =		lang/python \
			lang/ruby \
			x11/tde \
			perl
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-java \
			--without-c-sharp
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/tqt" \
			PYTHON="${MODPY_BIN}" RUBY="${RUBY}"

WRKDIST =		${WRKDIR}/kdebindings

.include <bsd.port.mk>
