COMMENT=	Simple Virtual PC Simulator
CATEGORIES=	emulators

HOMEPAGE=	https://github.com/GNS3/vpcs
GH_ACCOUNT=	GNS3
GH_PROJECT=	vpcs
GH_TAGNAME=	v0.8.3

# BSD
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

do-build:
	(cd ${WRKSRC}/src && ./mk.sh)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/vpcs ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpcs
.for i in readme.txt readme_cn.txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/vpcs
.endfor
	${INSTALL_MAN} ${WRKSRC}/man/vpcs.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
