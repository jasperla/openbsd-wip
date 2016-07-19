# $OpenBSD$

COMMENT=	signal-processing toolkit for SDR (software-defined radio)

DISTNAME=	gnuradio-3.7.5

SHARED_LIBS +=  gnuradio-analog           0.0 # 3.7
SHARED_LIBS +=  gnuradio-atsc             0.0 # 3.7
SHARED_LIBS +=  gnuradio-audio            0.0 # 3.7
SHARED_LIBS +=  gnuradio-blocks           0.0 # 3.7
SHARED_LIBS +=  gnuradio-channels         0.0 # 3.7
SHARED_LIBS +=  gnuradio-digital          0.0 # 3.7
SHARED_LIBS +=  gnuradio-dtv              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fcd              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fec              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fft              0.0 # 3.7
SHARED_LIBS +=  gnuradio-filter           0.0 # 3.7
SHARED_LIBS +=  gnuradio-noaa             0.0 # 3.7
SHARED_LIBS +=  gnuradio-pager            0.0 # 3.7
SHARED_LIBS +=  gnuradio-pmt              0.0 # 3.7
SHARED_LIBS +=  gnuradio-qtgui            0.0 # 3.7
SHARED_LIBS +=  gnuradio-runtime          0.0 # 3.7
SHARED_LIBS +=  gnuradio-trellis          0.0 # 3.7
SHARED_LIBS +=  gnuradio-video-sdl        0.0 # 3.7
SHARED_LIBS +=  gnuradio-vocoder          0.0 # 3.7
SHARED_LIBS +=  gnuradio-wavelet          0.0 # 3.7
SHARED_LIBS +=  gnuradio-wxgui            0.0 # 3.7
SHARED_LIBS +=  volk                      0.0 # 3.7

CATEGORIES=	comms

HOMEPAGE=	https://gnuradio.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtCore QtGui SDL boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_system-mt boost_thread-mt
WANTLIB += boost_unit_test_framework-mt c fftw3f fftw3f_threads
WANTLIB += gsl gslcblas jack m orc-0.4 portaudio pthread
WANTLIB += qwt stdc++ usb-1.0 ${MODPY_WANTLIB}

MASTER_SITES=	http://gnuradio.org/releases/gnuradio/

MODULES=	converters/libiconv \
		devel/cmake \
		lang/python

USE_NINJA=	No

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/cppunit \
		devel/swig

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-cheetah \
		math/py-numpy \
		misc/shared-mime-info \
		textproc/py-lxml \
		x11/py-qt4 \
		x11/py-wxPython

# disable jack??
LIB_DEPENDS=	audio/jack \
		audio/portaudio-svn \
		devel/libusb1 \
		devel/boost \
		devel/gsl \
		devel/sdl \
		math/fftw3,float \
		devel/orc \
		x11/qwt

# any hidden deps? test build on clean box..


#-- ######################################################
#-- # Gnuradio disabled components                        
#-- ######################################################
#--   * sphinx
#--   * gnuradio-companion
#--   * gr-comedi			linux only
#--   * gr-qtgui
#--   * gr-uhd				unported dep
#--   * gr-shd


#TEST_DEPENDS= 

CONFIGURE_ARGS+= -DENABLE_DOXYGEN=OFF \
		-DENABLE_GR_COMEDI=OFF \
		-DENABLE_GR_UHD=OFF \
		-DENABLE_GR_SHD=OFF
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -pthread" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

MAKE_ENV=	VERBOSE=1

#NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,mime}
	mv ${PREFIX}/share/gnuradio/examples ${PREFIX}/share/examples/gnuradio
	cd ${PREFIX}/share/gnuradio/grc/freedesktop/ && \
	    mv gnuradio-grc.desktop ${PREFIX}/share/applications && \
	    mv gnuradio-grc.xml ${PREFIX}/share/mime
# icons?

.include <bsd.port.mk>
