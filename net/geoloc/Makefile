DISTNAME=	geoloc-1.0

GH_PROJECT=	geoloc
GH_ACCOUNT=	devnexen
GH_TAGNAME=	v1.0
CATEGORIES=	net
COMMENT=	geolocalisation service

MAINTAINER=	devnexen@gmail.com
YACC=		yacc

MODULES=        devel/cmake	
CONFIGURE_ARGS=	-DGEOLOC_INSTALL_PATH=${LOCALBASE}

PERMIT_PACKAGE_CDROM= Yes

post-extract:
		@cd ${WRKSRC}/geolocd && ${YACC} -o y.tab.c parse.y
		${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX}/man/man1
		${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX}/man/man5
		${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX}/man/man8
		${INSTALL_DATA} ${WRKSRC}/geolocctl/geolocctl.1 ${DESTDIR}/${PREFIX}/man/man1
		${INSTALL_DATA} ${WRKSRC}/geolocd/geolocd.conf.5 ${DESTDIR}/${PREFIX}/man/man5
		${INSTALL_DATA} ${WRKSRC}/geolocd/geolocd.8 ${DESTDIR}/${PREFIX}/man/man8

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/geolocd
		${INSTALL_DATA} ${WRKSRC}/geolocd/geolocd.conf ${PREFIX}/share/examples/geolocd

.include <bsd.port.mk>
