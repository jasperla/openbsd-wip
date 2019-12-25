# $OpenBSD$

COMMENT-main=		web service hosting stack
COMMENT-python3=	python plugin for uWSGI web service hosting stack
COMMENT-lua=		lua plugin for uWSGI web service hosting stack

V=			2.0.18
DISTNAME=		uwsgi-$V
PKGNAME-main=		uwsgi-$V
PKGNAME-python3=	uwsgi-plugin-python3-$V
PKGNAME-lua=		uwsgi-plugin-lua-$V

MULTI_PACKAGES=	-main -python3 -lua

CATEGORIES=		www

HOMEPAGE=		http://uwsgi-docs.readthedocs.org/en/latest/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB-main += iconv c crypto execinfo jansson kvm m
WANTLIB-main += pcre perl pthread ssl util xml2 z

WANTLIB-python3=	${MODPY_WANTLIB} m pthread util
WANTLIB-lua=		${MODLUA_WANTLIB} m

MASTER_SITES=		http://projects.unbit.it/downloads/

MODULES=		lang/lua \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS-main=	devel/jansson \
			devel/libexecinfo \
			devel/pcre \
			textproc/libxml
LIB_DEPENDS-python3= 	${MODPY_LIB_DEPENDS}
LIB_DEPENDS-lua= 	${MODLUA_LIB_DEPENDS}
RUN_DEPENDS=		www/uwsgi

MAKE_JOBS?=	1
MAKE_FLAGS=	PYTHON="${MODPY_BIN}" \
		PROFILE=openbsd_pkg \
		CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CPUCOUNT="${MAKE_JOBS}"
MAKE_ENV=	UWSGICONFIG_LUAPC=lua${MODLUA_DEFAULT_VERSION:S/.//}

CONFIGURE_STYLE= none # override python.port.mk default
USE_GMAKE=	Yes

TEST_TARGET=	check

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/local,${PREFIX},' uwsgiconfig.py
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
