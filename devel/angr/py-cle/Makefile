# $OpenBSD$

COMMENT =		CLE loads binaries and their associated libraries

ANGR_PYTHON_MODULE =	cle

RUN_DEPENDS =		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
			devel/angr/py-claripy>=${MODPY_EGG_VERSION} \
			devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			security/py-pefile${MODPY_FLAVOR}

.include <bsd.port.mk>
