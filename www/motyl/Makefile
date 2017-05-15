# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	opinionated static site generator written in Lua

GH_ACCOUNT =	fcambus
GH_PROJECT =	motyl
GH_COMMIT =	12faa944f9b5e858de3df86a0703e5e926d6ca16

DISTNAME =	motyl-20170402

CATEGORIES =	www

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua

RUN_DEPENDS =	devel/luafs \
		textproc/lua-lunamark \
		textproc/lua-lustache \
		textproc/lua-yaml

NO_BUILD =	Yes
NO_TEST =	Yes

pre-configure:
	@sed -i -e 's,^#!/usr/bin/env lua,#!${MODLUA_BIN},' \
		${WRKSRC}/src/motyl.lua

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/motyl.lua ${PREFIX}/bin/motyl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/motyl
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/motyl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/motyl
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/motyl

.include <bsd.port.mk>
