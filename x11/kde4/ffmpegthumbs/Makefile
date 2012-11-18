# $OpenBSD$

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
CATEGORIES =	multimedia
DISTNAME =	ffmpegthumbs-${MODKDE_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio
WANTLIB += avcodec avformat avutil swscale

RUN_DEPENDS =	graphics/ffmpeg

.include <bsd.port.mk>
