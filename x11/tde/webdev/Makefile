# $OpenBSD$

COMMENT =		Trinity Desktop Environment, web development tool

DISTNAME =		kdewebdev-${TDE_V}

CATEGORIES =		x11 x11/tde devel

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype idn jpeg kabc kdecore kdefx kdeprint kdesu
WANTLIB += kdeui khtml kio kjs kmdi kmdi2 knewstuff kparts kresources
WANTLIB += ktexteditor kutils kwalletclient m pthread stdc++ tqt
WANTLIB += util vcard xml2 xslt z

MODULES =		x11/tde \
			devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			textproc/libxslt

CONFIGURE_ARGS +=	-DBUILD_ALL=ON

WRKDIST =		${WRKDIR}/kdewebdev

.include <bsd.port.mk>
