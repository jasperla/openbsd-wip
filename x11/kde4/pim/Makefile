# $OpenBSD: Makefile,v 1.8 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, personal information management
DISTNAME =	kdepim-${MODKDE_VERSION}
REVISION =	1

SHARED_LIBS =	akonadi_next 0.0
SHARED_LIBS +=	akregatorinterfaces 0.0
SHARED_LIBS +=	kaddressbookprivate 0.0
SHARED_LIBS +=	kcal_resourceblog 0.0
SHARED_LIBS +=	kleo 0.0
SHARED_LIBS +=	kontactprivate 0.0
SHARED_LIBS +=	korganizer_core 0.0
SHARED_LIBS +=	korganizerprivate 0.0
SHARED_LIBS +=	messagecore 0.0
SHARED_LIBS +=	messagelist 0.0
SHARED_LIBS +=	messageviewer 0.0
SHARED_LIBS +=	akregatorprivate     0.0      # .1.0
SHARED_LIBS +=	kcal_resourceremote  3.0      # .1.0
SHARED_LIBS +=	kdepim               3.0      # .1.0
SHARED_LIBS +=	kmailprivate         0.0      # .1.0
SHARED_LIBS +=	knodecommon          0.0      # .1.0
SHARED_LIBS +=	korganizer_interfaces  0.0    # .1.0
SHARED_LIBS +=	kpgp                 6.0      # .2.2
SHARED_LIBS +=	ksieve               2.0      # .0.0

SHARED_LIBS +=  calendarsupport           0.0 # 4.7
SHARED_LIBS +=  eventviews                0.0 # 4.7
SHARED_LIBS +=  incidenceeditorsng        0.0 # 4.7
SHARED_LIBS +=  incidenceeditorsngmobile  0.0 # 4.7
SHARED_LIBS +=  kdepimdbusinterfaces      0.0 # 4.7
SHARED_LIBS +=  kdepimmobileui            0.0 # 4.7
SHARED_LIBS +=  kdgantt2                  0.0 # 0.1
SHARED_LIBS +=  kleopatraclientcore       0.0 # 0.3
SHARED_LIBS +=  kleopatraclientgui        0.0 # 0.3
SHARED_LIBS +=  kmanagesieve              0.0 # 4.7
SHARED_LIBS +=  ksieveui                  0.0 # 4.7
SHARED_LIBS +=  mailcommon                0.0 # 4.7
SHARED_LIBS +=  messagecomposer           0.0 # 4.7
SHARED_LIBS +=  templateparser            0.0 # 4.7

MODULES =	devel/gettext

MODKDE4_USE =	pim

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xss Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += akonadi-calendar akonadi-contact akonadi-kde akonadi-kmime
WANTLIB += akonadiprotocolinternals kabc>=5 kalarmcal kblog kcal kcalcore
WANTLIB += kcalutils kcmutils kde3support kdeui kdewebkit
WANTLIB += kdnssd kfile kholidays khtml kimap kio kjs kldap
WANTLIB += kmbox kmime knewstuff3 knotifyconfig kontactinterface kparts
WANTLIB += kpimidentities kpimtextedit kpimutils kprintutils kresources
WANTLIB += ktexteditor ktnef mailtransport nepomuk nepomukquery
WANTLIB += nepomukutils phonon plasma solid soprano
WANTLIB += streamanalyzer streams syndication
WANTLIB += assuan gpg-error gpgme++ gpgme++-pthread gpgme-pthread
WANTLIB += grantlee_core grantlee_gui qgpgme sasl2 prison

# textproc/dblatex adds all of texlive, make it optional?
BUILD_DEPENDS =	devel/boost \
		databases/soprano \
		databases/strigi \
		misc/shared-desktop-ontologies \
		security/cyrus-sasl2 \
		security/gpgme \
		security/libassuan \
		textproc/dblatex \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/libxslt \
		x11/grantlee \
		x11/kde4/akonadi \

LIB_DEPENDS =	x11/grantlee
RUN_DEPENDS +=	x11/gtk+2,-guic

# DCMAKE_EXE_LINKER_FLAGS fixes undefined symbols for pulseaudio

CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib \
                                -Wl,-rpath,${LOCALBASE}/lib/pulseaudio"


WRONG_SYSCONF_FILES =	dbus-1	share/examples

.include <bsd.port.mk>
