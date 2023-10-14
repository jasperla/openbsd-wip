USE_WXNEEDED =		Yes

#BROKEN =		SIGILL on startup (BTI?)
#0  0x000009e081205c60 in ?? ()
#1  0x000009df7f7883df in vmEntryToJavaScript () from /usr/local/lib/libJavaScriptCore.so.0.0
USE_NOBTCFI =		Yes

COMMENT =		feature-rich dictionary lookup program
CATEGORIES =		textproc education x11

DIST_TUPLE =		github	goldendict	goldendict	1.5.0	.

# GPLv3+
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Sql Qt5Widgets Qt5Xml X11 Xtst bz2 c execinfo iconv lzo2 m z

MODULES =		devel/qmake \
			x11/qt5

# keep it small until someone needs one of these features
MODQMAKE_ARGS =		CONFIG-=old_hunspell \
			CONFIG-=zim_support \
			CONFIG+=no_chinese_conversion_support \
			CONFIG+=no_epwing_support \
			CONFIG+=no_extra_tiff_handler \
			CONFIG+=no_ffmpeg_player

MODQMAKE_PROJECTS =	goldendict.pro

# XXX goldendict.pro only links it on 'unix:!mac && arm' (??) or 'freebsd'
LDFLAGS +=		-liconv

.include <bsd.port.mk>
