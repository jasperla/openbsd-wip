# $OpenBSD$

COMMENT =		TDE personal information applications

V =			${TDE_V}
DISTNAME =		kdepim-${V}

CATEGORIES =		x11 x11/tde productivity

SHARED_LIBS +=  akregatorprivate          0.0 # 0.0
SHARED_LIBS +=  gpgme++                   4.0 # 0.4
SHARED_LIBS +=  index                     2.0 # 0.0
SHARED_LIBS +=  kabinterfaces             3.0 # 1.0
SHARED_LIBS +=  kaddressbook              2.0 # 0.0
SHARED_LIBS +=  karm                      0.0 # 0.0
SHARED_LIBS +=  kcal                      5.0 # 2.0
SHARED_LIBS +=  kcal_resourceremote       3.0 # 1.0
SHARED_LIBS +=  kdepim                    3.0 # 1.0
SHARED_LIBS +=  kgantt                    2.0 # 0.0
SHARED_LIBS +=  kgroupwarebase            2.0 # 0.0
SHARED_LIBS +=  kgroupwaredav             2.0 # 0.0
SHARED_LIBS +=  kholidays                 3.0 # 1.0
SHARED_LIBS +=  kleopatra                 3.0 # 1.0
SHARED_LIBS +=  kmime                     6.0 # 2.2
SHARED_LIBS +=  knodecommon               1.0 # 3.0
SHARED_LIBS +=  knotes                    0.0 # 0.0
SHARED_LIBS +=  kocorehelper              3.0 # 1.0
SHARED_LIBS +=  kode                      3.0 # 1.0
SHARED_LIBS +=  kontact                   3.0 # 1.0
SHARED_LIBS +=  korg_stdprinting          3.0 # 1.0
SHARED_LIBS +=  korganizer                3.0 # 1.0
SHARED_LIBS +=  korganizer_calendar       3.0 # 1.0
SHARED_LIBS +=  korganizer_eventviewer    3.0 # 1.0
SHARED_LIBS +=  kpgp                      6.0 # 2.2
SHARED_LIBS +=  kpimexchange              3.0 # 1.0
SHARED_LIBS +=  kpimidentities            3.0 # 1.0
SHARED_LIBS +=  kpinterfaces              3.0 # 1.0
SHARED_LIBS +=  ksieve                    2.0 # 0.0
SHARED_LIBS +=  ktnef                     3.0 # 1.0
SHARED_LIBS +=  mimelib                   3.0 # 1.0
SHARED_LIBS +=  qgpgme                    2.0 # 0.0

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender artsflow artsflow_idl
WANTLIB += artskde assuan c expat fontconfig freetype gpg-error
WANTLIB += gpgme ical icalss icalvcal idn jpeg kabc
WANTLIB += kabc_file kdecore kdefx kdeprint kdesu kdeui khtml
WANTLIB += kimproxy kio kjs kmedia2_idl knewstuff kparts kresources
WANTLIB += kutils kwalletclient m mcop pthread qtmcop qui sasl2
WANTLIB += soundserver_idl stdc++ tqt util vcard z

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		x11/tde/base \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			security/cyrus-sasl2 \
			textproc/libical \
			security/gpgme

CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DWITH_SASL=ON \
			-DWITH_ARTS=ON \
			-DWITH_BIRTHDAYS=ON \
			-DWITH_INDEXLIB=ON \
			-DCMAKE_REQUIRED_LIBRARIES="-L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/kdepim

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
