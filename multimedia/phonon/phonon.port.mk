
# Remember to sync this with LIBphonon_VERSION
MODPHONON_LIB_VERSION =	6

MODPHONON_WANTLIB =	phonon=${MODPHONON_LIB_VERSION}
MODPHONON_LIB_DEPENDS =	phonon->=4.5.1:multimedia/phonon
MODPHONON_RUN_DEPENDS =	phonon-gstreamer-*|phonon-vlc-*:multimedia/phonon-backend/gstreamer

MODULES +=	x11/qt4
WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}

MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
.endif
