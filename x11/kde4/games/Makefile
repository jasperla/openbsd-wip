# $OpenBSD: Makefile,v 1.10 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, games
DISTNAME =		kdegames-${VERSION}

SHARED_LIBS +=	kdegames             5.0      # .4.0
SHARED_LIBS +=	kmahjongglib         0.0      # .1.0
SHARED_LIBS +=	kggzgames            0.0      # .4.0
SHARED_LIBS +=	kggzmod              0.0      # .4.0
SHARED_LIBS +=	kggznet              0.0      # .4.0
SHARED_LIBS +=	kolfprivate          0.0      # .4.0
SHARED_LIBS +=	pala          	     0.0      # .0.1
SHARED_LIBS +=	iris_ksirk    	     0.0      # .2.0

WANTLIB += c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml 
WANTLIB += kdecore>=8 kdeui kdnssd kfile kio knewstuff2 knewstuff3
WANTLIB += knotifyconfig phonon>=6
WANTLIB += openal qca sndfile

BUILD_DEPENDS += x11/kde4/automoc
LIB_DEPENDS +=	x11/kde4/libs \
		multimedia/phonon \
		audio/openal \
		audio/libsndfile \
		games/ggz/ggz-client-libs \
		math/qhull \
		security/qca2

# for the khelpcenter
RUN_DEPENDS +=	x11/kde4/runtime

# Enable after porting
# RUN_DEPENDS +=	x11/kde4/py-kde4

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

# for Kajongg to avoid build-time dependency
CONFIGURE_ARGS +=	-DINSTALL_KAJONGG=TRUE
MAKE_FLAGS += 		-DINSTALL_KAJONGG=TRUE

.include <bsd.port.mk>
