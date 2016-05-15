# $OpenBSD: phonon.port.mk,v 1.5 2015/06/26 09:18:15 ajacoutot Exp $
.if ${MODULES:Mx11/qt5} || ${MODULES:Mdevel/kf5}
MODPHONON_WANTLIB =	phonon4qt5
MODPHONON_LIB_DEPENDS =	phonon-qt5->=4.8.0:multimedia/phonon,qt5
.else
MODPHONON_WANTLIB =	${MODKDE4_LIB_DIR}/phonon_s
MODPHONON_LIB_DEPENDS =	phonon->=4.8.0:multimedia/phonon
.endif

# If enabled (default), make sure at least one Phonon backend is
# installed prior installing affected port.
MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
MODPHONON_RUN_DEPENDS =	phonon-vlc-*|phonon-gstreamer-*:multimedia/phonon-backend/vlc
.endif

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
