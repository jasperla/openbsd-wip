# $OpenBSD$

COMMENT-main=	web service hosting stack
COMMENT-python=	python plugin for uWSGI web service hosting stack
COMMENT-lua=	lua plugin for uWSGI web service hosting stack

V=		2.0.8
DISTNAME=	uwsgi-$V
PKGNAME-main=	uwsgi-$V
PKGNAME-python=	uwsgi-plugin-python2.7-$V
PKGNAME-lua=	uwsgi-plugin-lua-$V

MULTI_PACKAGES=	-main -python -lua

CATEGORIES=	www

HOMEPAGE=	http://uwsgi-docs.readthedocs.org/en/latest/

# XXX
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ${MODLIBICONV_WANTLIB} c crypto execinfo kvm m pcre perl pthread
WANTLIB-main += ssl util xml2 yajl z

WANTLIB-python=	${MODPY_WANTLIB} m pthread util
WANTLIB-lua=	${MODLUA_WANTLIB} m

MASTER_SITES=	http://projects.unbit.it/downloads/

MODULES=	converters/libiconv \
		lang/lua \
		lang/python
LIB_DEPENDS-main= ${MODLIBICONV_LIB_DEPENDS} \
		devel/libexecinfo \
		devel/libyajl \
		devel/pcre \
		textproc/libxml
LIB_DEPENDS-python= ${MODPY_LIB_DEPENDS}
LIB_DEPENDS-lua= ${MODLUA_LIB_DEPENDS}
RUN_DEPENDS=	www/uwsgi
RUN_DEPENDS-main= ${MODLIBICONV_RUN_DEPENDS}

BUILD_JOBS?=	1
MAKE_FLAGS=	PYTHON="${MODPY_BIN}" \
		PROFILE=openbsd_pkg \
		CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CPUCOUNT="${BUILD_JOBS}"
MAKE_ENV=	UWSGICONFIG_LUAPC=lua${MODLUA_DEFAULT_VERSION:S/.//}

CONFIGURE_STYLE= none # override python.port.mk default
USE_GMAKE=	Yes

TEST_TARGET=	check

pre-configure:
	cd ${WRKSRC}; perl -pi -e 's,/usr/local,${PREFIX},' uwsgiconfig.py
	cp ${FILESDIR}/openbsd_pkg.ini ${WRKSRC}/buildconf/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/uwsgi ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/uwsgi/
	${INSTALL_DATA} ${WRKSRC}/plugins/*_plugin.so ${PREFIX}/lib/uwsgi/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/
	${INSTALL_DATA} ${WRKSRC}/uwsgidecorators.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}

.include <bsd.port.mk>
