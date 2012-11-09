# $OpenBSD: Makefile,v 1.12 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, libraries for PIM
DISTNAME =	kdepimlibs-${MODKDE_VERSION}

SHARED_LIBS =	kabc                 5.0      # .4.0
SHARED_LIBS +=	kabc_file_core       0.0      # .4.0
SHARED_LIBS +=	kalarmcal	     0.0      # 2.7
SHARED_LIBS +=	kcal                 5.0      # .4.0
SHARED_LIBS +=	kldap                0.0      # .4.0
SHARED_LIBS +=	kmime                6.0      # .4.0
SHARED_LIBS +=	kresources           5.0      # .4.0
SHARED_LIBS +=	ktnef                3.0      # .4.0
SHARED_LIBS +=	kxmlrpcclient        0.0      # .4.0
SHARED_LIBS +=	syndication          0.0      # .1.0
SHARED_LIBS +=	gpgme++              2.4      # .1.0
SHARED_LIBS +=	gpgme++-pthread      2.4      # .1.0
SHARED_LIBS +=	kblog                4.0      # .4.0
SHARED_LIBS +=	kimap                4.0      # .4.0
SHARED_LIBS +=	kpimidentities       4.0      # .4.0
SHARED_LIBS +=	kpimutils            4.0      # .4.0
SHARED_LIBS +=	mailtransport        4.0      # .4.0
SHARED_LIBS +=	qgpgme               2.0      # .1.0
SHARED_LIBS +=	akonadi-contact	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kabc	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kcal	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kde	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kmime	     0.0      # .4.4
SHARED_LIBS +=	akonadi-notes	     0.0      # 4.7
SHARED_LIBS +=	kholidays	     0.0      # .4.4
SHARED_LIBS +=	kontactinterface     0.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     0.0      # .4.4
SHARED_LIBS +=	microblog	     0.0      # .4.4

SHARED_LIBS +=  akonadi-calendar	0.0 # 4.7
SHARED_LIBS +=  kcalcore		0.0 # 4.7
SHARED_LIBS +=  kcalutils		0.0 # 4.7
SHARED_LIBS +=  kmbox			0.0 # 4.7

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += akonadiprotocolinternals
WANTLIB += assuan c e2fs-uuid gpg-error gpgme gpgme-pthread ical icalss
WANTLIB += kcmutils kdeui kemoticons kio kparts lber ldap m nepomuk
WANTLIB += nepomukutils phonon_s prison pthread sasl2 solid soprano stdc++

MODULES =	devel/gettext

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS +=	databases/openldap \
		graphics/prison \
		security/cyrus-sasl2 \
		security/gpgme>=0.4.5 \
		sysutils/e2fsprogs \
		textproc/libical \
		x11/kde4/akonadi

.include <bsd.port.mk>
