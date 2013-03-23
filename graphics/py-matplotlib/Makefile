# $OpenBSD: Makefile,v 1.42 2012/02/28 23:01:23 rpointel Exp $

VMEM_WARNING=	Yes

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		matplotlib-1.2.0
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics devel math

HOMEPAGE=	http://matplotlib.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs python2.7 stdc++ tcl85 tk85
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

MODULES=	lang/python \
		devel/gettext \
		x11/tk

RUN_DEPENDS=	math/py-numpy \
		x11/py-gtk2 \
		devel/py-tz \
		devel/py-dateutil \
		${MODPY_TKINTER_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	graphics/png
TEST_DEPENDS =	graphics/py-matplotlib

MAKE_ENV+=	EXTRA_INCLUDES="${WRKSRC} ${LOCALBASE}/include/libpng ${MODTCL_INCDIR} ${MODTK_INCDIR}" \
		LDSHARED="${CC} -shared -fPIC"

post-install:
	# Make examples use MODPY_VER
	(set -ex ; for fn in `find ${WRKSRC}/examples -name \*.py` ; do \
	    sed "1s/python\$$/python${MODPY_VERSION}/" < $${fn} > $${fn}__ ; \
	    mv $${fn}__ $${fn} ; \
	done)
	# examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	(set -e ; cd ${WRKSRC}/examples ; tar cf - . | \
	    (set -e ; cd ${PREFIX}/share/examples/py-matplotlib ; tar xf - ))

# Do not run `make update-plist` after running tests or you will end
# up with the test outcomes in the PLIST.
do-test:
	cd ${WRKSRC}/examples/tests && ${MODPY_BIN} backend_driver.py

.include <bsd.port.mk>
