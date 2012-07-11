# $OpenBSD$

COMMENT-main =		Trinity Desktop Environment, graphic applications
COMMENT-kamera =	TDE interface to digital cameras
COMMENT-kpov =		TDE modeller for povray
COMMENT-sane =		TDE interface to scanners

V =			${TDE_V}
DISTNAME =		kdegraphics-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-kamera =	kamera-${V}
PKGNAME-kpov =		kpovmodeller-${V}
PKGNAME-sane =		ksane-${V}

MULTI_PACKAGES =	-main -kpov -kamera -sane

SHARED_LIBS +=  kfaximage                 0.0 # 1.0
SHARED_LIBS +=  kghostviewlib             2.0 # 0.0
SHARED_LIBS +=  kimageviewer              2.0 # 0.0
SHARED_LIBS +=  kmultipage                2.0 # 0.0
SHARED_LIBS +=  kpovmodeler               2.0 # 0.0
SHARED_LIBS +=  kscan                     3.0 # 1.0
SHARED_LIBS +=  ksvg                      2.0 # 0.0
SHARED_LIBS +=  poppler-tqt               0.0 # 0.0
SHARED_LIBS +=  text2path                 2.0 # 0.0

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype idn kdecore kdefx kdesu kdeui kio kwalletclient
WANTLIB += m stdc++ tqt util z
WANTLIB-main = ${WANTLIB} Half Iex IlmImf IlmThread Imath Imlib Xext Xft Xxf86vm
WANTLIB-main += art_lgpl_2 fribidi jpeg kdeprint khtml kjs kparts kutils
WANTLIB-main += lcms png poppler pthread tiff ungif
WANTLIB-kamera = ${WANTLIB} exif gphoto2 gphoto2_port usb
WANTLIB-sane = ${WANTLIB} jpeg kdeprint kparts pthread sane tiff usb
WANTLIB-kpov = ${WANTLIB} GL GLU Xmu Xt kparts pthread

MODULES =		devel/gettext \
			x11/tde
# XXX texlive???
#BUILD_DEPENDS =	???
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			print/ghostscript/gnu \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			graphics/imlib \
			devel/fribidi \
			print/poppler
LIB_DEPENDS-kamera =	${LIB_DEPENDS} \
			graphics/libgphoto2
LIB_DEPENDS-sane =	${LIB_DEPENDS} \
			graphics/sane-backends
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DWITH_T1LIB=ON \
			-DWITH_TIFF=ON \
			-DWITH_OPENEXR=ON \
			-DWITH_PDF=ON \
			-DCMAKE_REQUIRED_LIBRARIES="-L${X11BASE}/lib -L${LOCALBASE}/lib -lm"
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/kdegraphics
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
