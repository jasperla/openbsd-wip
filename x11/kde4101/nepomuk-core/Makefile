# $OpenBSD$

COMMENT =	KDE Nepomuk core libraries
DISTNAME =	nepomuk-core-${MODKDE4_VERSION}

SHARED_LIBS =	nepomukcore		0.0 # 4.9
#SHARED_LIBS +=	nepomuksync		0.0 # 4.9
SHARED_LIBS +=	nepomukcommon		0.0 # 4.10
SHARED_LIBS +=	kdeinit4_nepomukserver	0.0 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kidletime kio solid soprano sopranoclient sopranoserver
WANTLIB += avcodec avformat avutil exiv2 poppler-qt4 tag

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/doxygen

LIB_DEPENDS =	audio/taglib \
		databases/soprano \
		graphics/exiv2 \
		graphics/ffmpeg \
		print/poppler,,-qt4

# turns on indexing, let user make decision, default=no by GNOME & KDE
#RUN_DEPENDS +=	databases/virtuoso

.include <bsd.port.mk>
