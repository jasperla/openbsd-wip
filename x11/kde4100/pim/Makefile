# $OpenBSD: Makefile,v 1.8 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, personal information management
DISTNAME =	kdepim-${MODKDE_VERSION}

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
SHARED_LIBS +=  mailimporter              0.0 # 4.9
SHARED_LIBS +=  messagecomposer           0.0 # 4.7
SHARED_LIBS +=  templateparser            0.0 # 4.7

SHARED_LIBS +=	pimcommon                 0.0 # 4.10

MODULES =	devel/gettext

MODKDE4_USE =	pim

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xss Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += akonadiprotocolinternals ${KDE4LIB}/kabc ${KDE4LIB}/kalarmcal ${KDE4LIB}/kblog ${KDE4LIB}/kcal ${KDE4LIB}/kcalcore
WANTLIB += ${KDE4LIB}/kcalutils ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kfile ${KDE4LIB}/kholidays ${KDE4LIB}/khtml ${KDE4LIB}/kimap ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kldap
WANTLIB += ${KDE4LIB}/kmbox ${KDE4LIB}/kmime ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kontactinterface ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kpimtextedit ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/ktnef ${KDE4LIB}/mailtransport ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukcore
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/nepomukwidgets ${KDE4LIB}/plasma prison ${KDE4LIB}/solid soprano
WANTLIB += streamanalyzer streams ${KDE4LIB}/syndication
WANTLIB += assuan gpg-error gpgme++ gpgme++-pthread gpgme-pthread
WANTLIB += grantlee_core grantlee_gui qgpgme sasl2

MODULES = multimedia/phonon

# textproc/dblatex could be detected but will not be used
BUILD_DEPENDS =	devel/boost \
		misc/shared-desktop-ontologies \
		textproc/libxslt

RUN_DEPENDS =	misc/shared-desktop-ontologies

LIB_DEPENDS =	databases/soprano \
		databases/strigi \
		STEM->=${MIN_AKONADI_VERSION}:productivity/akonadi \
		security/cyrus-sasl2 \
		security/gpgme \
		security/libassuan \
		x11/grantlee \
		x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		x11/kde4/nepomuk-widgets>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
