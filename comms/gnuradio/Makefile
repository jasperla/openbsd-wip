# $OpenBSD$

COMMENT=	signal-processing toolkit for SDR (software-defined radio)

DISTNAME=	gnuradio-3.6.4.1

#SHARED_LIBS=	

CATEGORIES=	comms

HOMEPAGE=	http://gnuradio.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

#XXX WANTLIB=	

MASTER_SITES=	http://gnuradio.org/releases/gnuradio/

MODULES=	devel/cmake \
		lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-cheetah \
		x11/py-wxPython
#-- ######################################################
#-- # Gnuradio disabled components                        
#-- ######################################################
#--   * sphinx
#--   * gnuradio-companion
#--   * gr-comedi
#--   * gr-qtgui
#--   * gr-uhd
#--   * gr-shd
#--   * gr-wavelet

# XXX doesnt find portaudio, does find jack


#TEST_DEPENDS= 

CONFIGURE_ARGS+= -DENABLE_DOXYGEN=OFF
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -pthread" \
		CFLAGS="${CFLAGS} -pthread" \
		LDFLAGS="-lpthread"

#NO_TEST=	Yes

.include <bsd.port.mk>
