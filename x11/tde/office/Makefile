# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		office suite for TDE

DISTNAME =		koffice-${TDE_V}

SHARED_LIBS +=  chalk_cmyk_u16            0.0 # 0.0
SHARED_LIBS +=  chalk_gray_u16            0.0 # 0.0
SHARED_LIBS +=  chalk_lms_f32             0.0 # 0.0
SHARED_LIBS +=  chalk_rgb_f16half         0.0 # 0.0
SHARED_LIBS +=  chalk_rgb_f32             0.0 # 0.0
SHARED_LIBS +=  chalk_rgb_u16             0.0 # 0.0
SHARED_LIBS +=  chalk_ycbcr_u16           0.0 # 0.0
SHARED_LIBS +=  chalk_ycbcr_u8            0.0 # 0.0
SHARED_LIBS +=  chalkcolor                0.0 # 1.0
SHARED_LIBS +=  chalkcommon               0.0 # 1.0
SHARED_LIBS +=  chalkgrayscale            0.0 # 0.0
SHARED_LIBS +=  chalkimage                0.0 # 1.0
SHARED_LIBS +=  chalkrgb                  0.0 # 0.0
SHARED_LIBS +=  chalkscripting            0.0 # 0.0
SHARED_LIBS +=  chalkui                   0.0 # 1.0
SHARED_LIBS +=  karboncommon              2.0 # 0.0
SHARED_LIBS +=  kchartcommon              4.0 # 2.0
SHARED_LIBS +=  kchartimageexport         5.0 # 4.0
SHARED_LIBS +=  kdchart                   2.0 # 0.0
SHARED_LIBS +=  kexicore                  3.0 # 2.0
SHARED_LIBS +=  kexidatatable             3.0 # 2.0
SHARED_LIBS +=  kexidb                    3.0 # 2.0
SHARED_LIBS +=  kexidbparser              3.0 # 2.0
SHARED_LIBS +=  kexiextendedwidgets       3.0 # 2.0
SHARED_LIBS +=  kexiformutils             3.0 # 2.0
SHARED_LIBS +=  kexiguiutils              3.0 # 2.0
SHARED_LIBS +=  keximain                  3.0 # 2.0
SHARED_LIBS +=  keximigrate               3.0 # 2.0
SHARED_LIBS +=  kexirelationsview         3.0 # 2.0
SHARED_LIBS +=  kexisql2                  4.0 # 2.8
SHARED_LIBS +=  kexisql3                  5.0 # 3.2
SHARED_LIBS +=  kexiutils                 3.0 # 2.0
SHARED_LIBS +=  kformdesigner             3.0 # 2.0
SHARED_LIBS +=  kformulalib               5.0 # 4.0
SHARED_LIBS +=  kiviocommon               2.0 # 0.0
SHARED_LIBS +=  kochart                   3.0 # 1.0
SHARED_LIBS +=  kofficecore               4.0 # 3.0
SHARED_LIBS +=  kofficeui                 4.0 # 3.0
SHARED_LIBS +=  kopainter                 3.0 # 2.0
SHARED_LIBS +=  kopalette                 2.0 # 1.0
SHARED_LIBS +=  koproperty                2.0 # 2.0
SHARED_LIBS +=  kotext                    4.0 # 3.0
SHARED_LIBS +=  kowmf                     3.0 # 2.0
SHARED_LIBS +=  kpresenterimageexport     5.0 # 4.0
SHARED_LIBS +=  kpresenterprivate         5.0 # 4.0
SHARED_LIBS +=  krossapi                  2.0 # 1.0
SHARED_LIBS +=  krossmain                 2.0 # 1.0
SHARED_LIBS +=  kspreadcommon             2.0 # 0.0
SHARED_LIBS +=  kstore                    4.0 # 3.0
SHARED_LIBS +=  kugarlib                  3.0 # 1.2
SHARED_LIBS +=  kwmailmerge_interface     6.0 # 4.0
SHARED_LIBS +=  kwmf                      4.0 # 3.0
SHARED_LIBS +=  kwordexportfilters        3.0 # 1.1
SHARED_LIBS +=  kwordprivate              5.0 # 4.0

CATEGORIES =		x11 x11/tde productivity

WANTLIB += DCOP GL GLU GraphicsMagick Half ICE Iex IlmImf IlmThread
WANTLIB += Imath MagickCore SM X11 Xext Xi Xt art_lgpl_2 bz2 c
WANTLIB += crypto djvulibre exif expat ffi fftw3 fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0
WANTLIB += jasper jbig jpeg kabc kdecore kdefx kdeprint kdeui
WANTLIB += khtml kio kjs kmdi knewstuff kparts kspell kspell2
WANTLIB += ktexteditor kutils lcms lcms2 ltdl lzma m mysqlclient
WANTLIB += openjpeg paper pcre png poppler poppler-qt poppler-tqt
WANTLIB += pq pqxx pthread readline ssl stdc++
WANTLIB += termcap tiff tqt util wmf wmflite wpd-0.8 wv2 xcb xml2
WANTLIB += xslt z ${MODPY_WANTLIB} ${MODRUBY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		x11/tde \
			lang/ruby \
			lang/python \
			devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/graphics \
			converters/wv2>=0.4.2 \
			textproc/libwpd \
			print/libpaper \
			archivers/xz \
			print/poppler,-qt \
			databases/libpqxx \
			databases/mysql \
			graphics/lcms2 \
			graphics/GraphicsMagick \
			graphics/ImageMagick \
			graphics/libexif

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-arts \
			--with-pqxx-libraries="${LOCALBASE}/lib" \
			--with-pqxx-includes="${LOCALBASE}/includes"
CONFIGURE_ENV =		LDFLAGS="-Wl,-rpath-link,${X11BASE}/lib"

WRKDIST =		${WRKDIR}/applications/koffice

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
