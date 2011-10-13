# $OpenBSD: Makefile,v 1.9 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, web development
DISTNAME =	kdewebdev-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS +=	klinkstatuscommon	0.0
SHARED_LIBS +=	kommandercore		0.0
SHARED_LIBS +=	kommanderwidgets	0.0

MODULES =	lang/ruby

LIB_DEPENDS +=	x11/kde4/libs \
		x11/kde4/pimlibs \
		${MODRUBY_LIB_DEPENDS}

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/kde4/korundum \
		x11/kde4/runtime

WANTLIB += c m pthread stdc++ z
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kde3support kdecore>=8 kdeui kemoticons khtml
WANTLIB += kidletime kio kjs kmime knewstuff2 kparts kpimidentities
WANTLIB += kprintutils krossui kutils mailtransport nepomuk
WANTLIB += nepomukutils phonon soprano threadweaver
WANTLIB += ruby${MODRUBY_BINREV} xml2 xslt

# Should be ported to tidyp?..
CONFIGURE_ARGS +=	-DWITH_LibTidy:Bool=No

post-patch:
	${SUBST_CMD} ${WRKSRC}/klinkstatus/src/plugins/scripting/scripts/examples/statistics/statistics.rb

.include <bsd.port.mk>
