# $OpenBSD$

COMMENT =	multi-architecture binary analysis toolkit

ANGR_PYTHON_MODULE =	angr

HOMEPAGE =	https://angr.io/

# Not honored?
#USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/py-unicorn${MODPY_FLAVOR} \
		devel/angr/py-pyvex>=${MODPY_EGG_VERSION}

# AngrServer could use (unported) rpyc
RUN_DEPENDS =	devel/angr/py-ailment>=${MODPY_EGG_VERSION} \
		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
		devel/angr/py-claripy>=${MODPY_EGG_VERSION} \
		devel/angr/py-cle>=${MODPY_EGG_VERSION} \
		devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
		devel/py-cachetools${MODPY_FLAVOR} \
		devel/capstone/python${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-cooldict${MODPY_FLAVOR} \
		devel/py-cparser${MODPY_FLAVOR} \
		devel/py-mulpyplexer${MODPY_FLAVOR} \
		devel/py-progressbar${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-unicorn${MODPY_FLAVOR} \
		math/py-networkx${MODPY_FLAVOR} \
		net/py-dpkt${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \

MAKE_ENV +=	C++C=${CXX}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/native/Makefile

.include <bsd.port.mk>
