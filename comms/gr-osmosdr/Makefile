# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:11 ajacoutot Exp $

COMMENT =	GNU Radio blocks for OsmoSDR hardware

DISTNAME =	gr-osmosdr-0.1.4

SHARED_LIBS +=	gnuradio-osmosdr          0.0 # 0.1

CATEGORIES =	comms

HOMEPAGE =	https://osmocom.org/projects/gr-osmosdr/wiki/GrOsmoSDR

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://cgit.osmocom.org/gr-osmosdr/snapshot/

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt gnuradio-blocks gnuradio-fcd
WANTLIB += gnuradio-pmt gnuradio-runtime hackrf log4cpp m pthread

MODULES =	devel/cmake \
		lang/python
LIB_DEPENDS =	comms/gnuradio \
		comms/hackrf

NO_TEST =	Yes

.include <bsd.port.mk>
