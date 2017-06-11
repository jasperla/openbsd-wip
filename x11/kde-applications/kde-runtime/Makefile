# $OpenBSD$

# XXXshorter
COMMENT =	Plugins and applications for KDE applications
DISTNAME =	kde-runtime-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

SHARED_LIBS +=  kwalletbackend            0.0 # 4.14
SHARED_LIBS +=  molletnetwork             0.0 # 4.14

WANTLIB += Half ICE Iex IlmImf IlmThread Imath QtCore QtDBus QtDeclarative
WANTLIB += QtGui QtNetwork QtScript QtSvg QtWebKit QtXml SM X11
WANTLIB += Xcursor Xext assuan attica c canberra exiv2 gcrypt
WANTLIB += glib-2.0 gpg-error gpgme++-pthread gpgme-pthread jpeg
WANTLIB += kactivities kcmutils kdeclarative kdecore kdesu kdeui
WANTLIB += kdewebkit kdnssd kemoticons kfile khtml kio kjs kmediaplayer
WANTLIB += knewstuff3 knotifyconfig kparts kpty kxmlrpcclient
WANTLIB += m nepomuk nepomukutils phonon_s plasma pthread pulse
WANTLIB += pulse-mainloop-glib qgpgme smbclient solid soprano
WANTLIB += ssh util webp

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	x11/kde4/libs \
		x11/kde4/pim \
		devel/automoc \
		devel/kf5/kactivities

TEST_IS_INTERACTIVE =	X11

#NO_TEST =	Yes

#PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
