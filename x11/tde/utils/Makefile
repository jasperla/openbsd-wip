# $OpenBSD$

COMMENT =		Trinity Desktop Environment, utilities

DISTNAME =		kdeutils-${TDE_V}

SHARED_LIBS +=  kcmlaptop                 2.0 # 0.0
SHARED_LIBS +=  khexeditcommon            2.0 # 0.0
SHARED_LIBS +=  kmilo                     3.0 # 1.0
SHARED_LIBS +=  kregexpeditorcommon       3.0 # 1.0
SHARED_LIBS +=  ksimcore                  3.0 # 1.0

WANTLIB += DCOP ICE SM X11 Xext Xi Xss Xtst c gmp kabc kdecore
WANTLIB += kdefx kdeprint kdesu kdeui kio knewstuff kparts ktexteditor
WANTLIB += kutils kvm kwalletclient m png pthread stdc++
WANTLIB += tqt util xcb z ${MODPY_WANTLIB}

MODULES =		x11/tde \
			lang/python
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			security/gnupg
LIB_DEPENDS =		x11/tde/libs \
			devel/gmp

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/kdeutils

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
