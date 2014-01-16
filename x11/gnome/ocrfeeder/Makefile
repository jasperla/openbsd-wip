# $OpenBSD$

COMMENT =		a complete Optical Character Recognition suite

GNOME_PROJECT =		ocrfeeder
GNOME_VERSION =		0.7.11

CATEGORIES +=		textprocs

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/gnome lang/python \
			textproc/intltool

BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
                        ${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =		textproc/py-enchant \
			graphics/py-Imaging \
			graphics/pygoocanvas \
			graphics/pysane \
			print/py-reportlab/reportlab

RUN_DEPENDS=		graphics/tesseract \
			print/unpaper \
			print/ghostscript/gnu

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION=       1.11

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

post-patch:
	perl -i -pe 's|/usr|${LOCALBASE}|;' \
		${WRKSRC}/src/ocrfeeder/util/constants.py.in
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf --install

pre-install:
	cd ${WRKSRC}/bin && \
		for f in ocrfeeder* ocrfeeder-cli* ; do \
			${MODPY_BIN_ADJ} $$f; \
		done
	${SUBST_CMD} ${WRKSRC}/src/ocrfeeder/util/constants.py.in

.include <bsd.port.mk>
