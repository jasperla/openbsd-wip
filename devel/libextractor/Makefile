# $OpenBSD$

COMMENT =		extract metadata from arbitrary file types

DISTNAME =		libextractor-0.6.2

SHARED_LIBS +=		extractor		0.0 # 3.2
SHARED_LIBS +=		extractor_common	0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.gnu.org/s/libextractor/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		bz2 c expat fontconfig freetype ltdl m mpeg2 pthread z

MASTER_SITES =		${MASTER_SITE_GNU:=libextractor/}

MODULES =		devel/gettext
LIB_DEPENDS =		devel/libtool,-ltdl \
			graphics/png \
			graphics/libmpeg2 \
			print/poppler \
			archivers/bzip2

USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-glib \
			--disable-gsf \
			--disable-gnome
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LIBS="-lfontconfig -lfreetype -pthread"

NO_REGRESS =		Yes

.include <bsd.port.mk>
