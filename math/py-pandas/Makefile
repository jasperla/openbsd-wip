# $OpenBSD$

COMMENT =		data analysis and manipulation library

MODPY_EGG_VERSION =	0.23.0
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		http://pandas.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3 test
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m ${MODPY_WANTLIB}

BUILD_DEPENDS +=	math/py-numpy${MODPY_FLAVOR}>=1.9.0

RUN_DEPENDS +=		math/py-numpy${MODPY_FLAVOR}>=1.9.0 \
			devel/py-dateutil${MODPY_FLAVOR}>=2.5.0 \
			devel/py-tz${MODPY_FLAVOR}

.if ${FLAVOR:Mtest}
TEST_DEPENDS +=		${RUN_DEPENDS} \
			databases/py-psycopg2${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-pathlib${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-bottleneck${MODPY_FLAVOR} \
			math/py-numexpr${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			net/py-boto${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-xlrd${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			x11/xclip

#			math/py-statsmodels${MODPY_FLAVOR}

#NO py3-mysql for now... disabled test for python3 FLAVOR
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		databases/py-mysql${MODPY_FLAVOR}
.endif

do-build:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && env TZ=UTC ${MODPY_BIN} -m pytest pandas

.endif

.include <bsd.port.mk>
