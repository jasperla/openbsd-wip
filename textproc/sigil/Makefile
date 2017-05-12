# $OpenBSD$

COMMENT=		multi-platform EPUB ebook editor

V=			0.8.7
DISTNAME=		Sigil-${V}
PKGNAME=		${DISTNAME:L}

GH_PROJECT=		Sigil
GH_ACCOUNT=		Sigil-Ebook
DISTFILES=		${V}${EXTRACT_SUFX}

CATEGORIES=		textproc

HOMEPAGE=		http://sigil-ebook.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

DIST_SUBDIR=		sigil

WANTLIB += c hunspell-1.3 m pcre16 pthread xerces-c z
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += Qt5XmlPatterns

MODULES=		devel/cmake \
			x11/qt5

LIB_DEPENDS=		devel/boost \
			devel/pcre \
			textproc/hunspell \
			textproc/xerces-c>=3.1.2

RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include ${X11BASE}/include" \
                -DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include ${X11BASE}/include -pthread" \
		-DDESTINATION_EXECUTABLE_NAME=sigil-bin

post-install:
	mv ${PREFIX}/share/sigil/sigil-bin ${PREFIX}/bin/sigil-bin
	sed -i 's#\${LOCALBASE}/share/sigil/#\${LOCALBASE}/bin/#' \
		${PREFIX}/bin/sigil

.include <bsd.port.mk>
