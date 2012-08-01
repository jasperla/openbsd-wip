# $OpenBSD$

COMMENT =		music player for TDE

DISTNAME =		amarok-${TDE_V}

SHARED_LIBS +=  amarok                    1.0 # 0.0

CATEGORIES =		x11 x11/tde audio

WANTLIB += DCOP GL ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gpod idn jpeg kdecore kdefx kdeprint
WANTLIB += kdesu kdeui khtml kio kjs knewstuff konqsidebarplugin
WANTLIB += kparts kutils kwalletclient m njb pthread sqlite3 stdc++
WANTLIB += tag tqt usb util xine z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde \
			lang/ruby
MODRUBY_BUILDDEP =	No
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		x11/tde/base \
			multimedia/xine-lib \
			audio/taglib \
			audio/libgpod \
			audio/libnjb

CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DWITH_KONQSIDEBAR=ON \
			-DWITH_XINE=ON \
			-DWITH_NJB=ON \
			-DWITH_IPOD=ON

WRKDIST =		${WRKDIR}/applications/amarok

pre-configure:
	find ${WRKSRC} -name '*.rb' | xargs ${MODRUBY_RUBY_ADJ}

post-install:
.for l in da de en es et fr it nl pl pt pt_BR ru sv
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.endfor

.include <bsd.port.mk>
