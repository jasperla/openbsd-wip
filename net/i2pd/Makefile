# $OpenBSD:$

COMMENT =	full-featured C++ implementation of I2P client

GH_ACCOUNT =	PurpleI2P
GH_PROJECT =	i2pd
GH_TAGNAME =	2.12.0

CATEGORIES =	net

HOMEPAGE =	http://i2pd.website

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_system-mt c crypto m pthread ssl z

.include <bsd.port.arch.mk>

MODULES =		lang/clang \
			devel/cmake

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

LIB_DEPENDS =		devel/boost

WRKSRC =		${WRKDIST}/build

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i2pd
	${INSTALL_DATA} ${WRKDIST}/docs/{i2pd.conf,tunnels.conf} \
		${PREFIX}/share/examples/i2pd

.include <bsd.port.mk>
