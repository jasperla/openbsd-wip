# $OpenBSD$

COMMENT =		Trinity Desktop Environment, edutainment

DISTNAME =		kdeedu-${TDE_V}

VMEM_WARNING =		Yes

SHARED_LIBS +=  extdate                   5.0 # 3.0
SHARED_LIBS +=  kdeeducore                5.0 # 3.0
SHARED_LIBS +=  kdeeduplot                5.0 # 3.0
SHARED_LIBS +=  kdeeduui                  5.0 # 3.5
SHARED_LIBS +=  kiten                     3.0 # 1.0
SHARED_LIBS +=  kvoctraincore             2.0 # 0.0

#WANTLIB =		???

#MODULES =		???
#BUILD_DEPENDS =	???
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	autoconf
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-kig-python-scripting \
			--disable-ocamlsolver
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/kdeedu
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

.include <bsd.port.mk>
