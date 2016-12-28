# $OpenBSD: Makefile,v 1.34 2015/04/04 11:42:17 edd Exp $


COMMENT=	communications server for Jabber/XMPP written in Lua
DISTNAME =	metronome-3.7
CATEGORIES=	net

HOMEPAGE=	http://metronome.im/


GH_ACCOUNT = maranda
GH_PROJECT = metronome
GH_TAGNAME = v3.7

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
LIB_DEPENDS=	devel/libidn
MODLUA_RUN_DEPENDS+= archivers/luazlib \
		databases/luadbi \
		devel/luaevent \
		devel/luafs \
		security/luasec \
		textproc/luaexpat>=1.3.0
TEST_DEPENDS =	${MODLUA_RUN_DEPENDS}
WANTLIB+=	crypto idn

SUBST_VARS+=	FLAVOR MAKE_PROGRAM

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${PREFIX}" \
		--ostype=openbsd \
		--sysconfdir="${SYSCONFDIR}/metronome" \
		--datadir="/var/metronome" \
		--with-lua="${LOCALBASE}" \
		--with-lua-include="${MODLUA_INCL_DIR}" \
		--c-compiler="${CC}" \
		--linker="${CC}" \
		--ldflags="-I/usr/include -I${LOCALBASE}/include -L/usr/lib -L${LOCALBASE}/lib -shared" \
		--cflags="${CFLAGS} -I${LOCALBASE}/include -fPIC"

FAKE_FLAGS+=	CONFIG=${DESTDIR}${PREFIX}/share/examples/metronome

pre-configure:
	${SUBST_CMD} ${WRKSRC}/metronome ${WRKSRC}/metronomectl \
		${WRKSRC}/certs/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metronome
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/metronome
	touch ${PREFIX}/share/examples/metronome/metronome.log
	rm -f ${PREFIX}/share/examples/metronome/certs/Makefile.*

do-test:
	cd ${WRKSRC}/tests && sh run_tests.sh 0

.include <bsd.port.mk>
