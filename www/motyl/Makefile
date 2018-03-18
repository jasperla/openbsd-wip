# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	opinionated blog-aware static site generator

GH_ACCOUNT =	fcambus
GH_PROJECT =	motyl
GH_COMMIT =	9cafa647f072603a82137ef918725117f3d6ca83

DISTNAME =	motyl-20180318

CATEGORIES =	www

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

RUN_DEPENDS =	textproc/ruby-kramdown \
		textproc/ruby-mustache \
		textproc/ruby-rouge

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/motyl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/motyl
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/motyl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/motyl
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/motyl

.include <bsd.port.mk>
