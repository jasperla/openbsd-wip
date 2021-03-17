# $OpenBSD: Makefile,v 1.60 2020/07/17 08:36:04 tb Exp $

# XXX incomplete!

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	light-weight system monitor

GH_ACCOUNT=	brndnmtthws
GH_PROJECT=	conky
GH_TAGNAME=	v1.11.6

CATEGORIES=	sysutils

# mostly GPLv3; see COPYING
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curl curses glib-2.0 iconv intl kvm lzma m \
		nghttp2 ossaudio pcre pthread ssl xml2 z ${MODLUA_WANTLIB}

MODULES=	devel/cmake \
		lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/glib2 \
		devel/pcre \
		net/curl \
		textproc/libxml \
		${MODLUA_LIB_DEPENDS}

FLAVORS=	no_x11 xmms2
FLAVOR?=

CONFIGURE_ARGS=	-DBUILD_RSS=On \
		-DBUILD_CURL=On \
		-DBUILD_MOC=Off

#		--disable-config-output \
#		--enable-lua

.if ${FLAVOR:Mno_x11}
.  if ${FLAVOR:Mxmms2}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+= -DBUILD_X11=off
.  endif
.endif

.if ${FLAVOR:Mxmms2}
CONFIGURE_ARGS+= -DBUILD_XMMS2=On
LIB_DEPENDS+=	audio/xmms2
WANTLIB+=	xmmsclient
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/conky

.include <bsd.port.mk>
