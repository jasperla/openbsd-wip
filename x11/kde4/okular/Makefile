# $OpenBSD$

COMMENT =	K Desktop Environment, document viewer
DISTNAME =	okular-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	okularcore		0.0	# 1.7

WANTLIB =  c m pthread stdc++ z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui khtml kio
WANTLIB += kjs kjsapi kparts kprintutils kpty nepomuk
WANTLIB += nepomukutils phonon qimageblitz soprano solid threadweaver
WANTLIB += chm djvulibre epub freetype poppler-qt4 qca2 spectre
WANTLIB += jpeg tiff

MODKDE4_USE =	pim

BUILD_DEPENDS =	textproc/docbook \
		textproc/docbook-xsl

LIB_DEPENDS = 	devel/chmlib \
		graphics/djvulibre \
		graphics/tiff \
		print/freetype \
		print/libspectre \
		print/poppler,-qt4 \
		security/qca2 \
		textproc/ebook-tools \
		x11/kde4/qimageblitz

.include <bsd.port.mk>
