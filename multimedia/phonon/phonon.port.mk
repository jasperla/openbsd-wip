# $OpenBSD$
MODPHONON_WANTLIB =	${MODKDE4_LIB_DIR}/phonon_s
MODPHONON_LIB_DEPENDS =	phonon->=4.6.0p2:multimedia/phonon
MODPHONON_RUN_DEPENDS =	phonon-gstreamer-*|phonon-vlc-*:multimedia/phonon-backend/gstreamer

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}

MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
.endif
