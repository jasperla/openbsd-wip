# $OpenBSD$

COMMENT =		creates DjVu files from PDF files

V =			0.7.17
DISTNAME =		pdf2djvu_${V}
PKGNAME =		pdf2djvu-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre m poppler
WANTLIB += pthread stdc++ xml2 xslt z

MASTER_SITES =		https://pdf2djvu.googlecode.com/files/

# https://code.google.com/p/pdf2djvu/wiki/BuildDepends
MODULES =		converters/libiconv \
			devel/gettext
LIB_DEPENDS =		graphics/GraphicsMagick \
			textproc/libxslt \
			print/poppler \
			graphics/djvulibre

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-openmp
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
