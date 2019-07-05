# $OpenBSD$

COMMENT =		abstraction layer for constraint solvers

ANGR_PYTHON_MODULE =	claripy

# See https://github.com/angr/claripy/issues/86 regarding py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver<4.6 \
			devel/py-cachetools${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			math/py-pysmt${MODPY_FLAVOR}

.include <bsd.port.mk>
