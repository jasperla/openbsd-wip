# $OpenBSD$

COMMENT =		interactive physics simulator for KDE
DISTNAME =		step-${MODKDE_VERSION}

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui khtml kio kjs knewstuff3 kparts nepomuk
WANTLIB += nepomukutils phonon soprano
WANTLIB += cln glib-2.0 gsl gslcblas iconv intl qalculate xml2

MODULES =	devel/gettext

LIB_DEPENDS = 	devel/gsl \
		math/libqalculate \
		x11/kde4/libs

RUN_DEPENDS =	x11/kde4/runtime

CONFIGURE_ARGS +=	-DSTEPCORE_TESTS:Bool=True

# REGRESS_TARGET =	tests

.include <bsd.port.mk>
