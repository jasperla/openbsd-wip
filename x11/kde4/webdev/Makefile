# $OpenBSD: Makefile,v 1.9 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, web development
DISTNAME =	kdewebdev-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	klinkstatuscommon	0.0
SHARED_LIBS +=	kommandercore		0.0
SHARED_LIBS +=	kommanderwidgets	0.0

WANTLIB =  c m pthread stdc++ z
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kde3support kdeui kemoticons khtml
WANTLIB += kidletime kio kjs kmime knewstuff2 kparts kpimidentities
WANTLIB += kprintutils krossui kutils mailtransport nepomuk
WANTLIB += nepomukutils phonon soprano threadweaver tidyp

MODULES =	lang/ruby

MODKDE4_USE =	pim

RUN_DEPENDS =	x11/kde4/korundum

LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS} \
		www/tidyp

post-patch:
	${SUBST_CMD} ${WRKSRC}/klinkstatus/src/plugins/scripting/scripts/examples/statistics/statistics.rb

.include <bsd.port.mk>
