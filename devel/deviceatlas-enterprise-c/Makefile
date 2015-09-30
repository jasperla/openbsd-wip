# $OpenBSD$

DISTNAME=		deviceatlas-enterprise-c-${V}
EXTRACT_SUFX=		.zip
PKGNAME=		deviceatlas-enterprise-c-${V}
WRKDIST=		${WRKDIR}/${PKGNAME}
V=			2.1
CATEGORIES=		net devel
COMMENT=		DeviceAtlas device detection C API

MASTER_SITES=		#
HOMEPAGE=		https://deviceatlas.com/deviceatlas-haproxy-module

MAINTAINER=		David Carlier <devnexen@gmail.com>

# The free of charge offering has a restricted use license
# for own usage only:
# No redistribution or derivative works are permitted.
# Contact us (https://www.deviceatlas.com/contact-us) to
# upgrade or to enable usage as part of a service offering

RESTRICTED=		"License prohibits redistribution" 
PERMIT_PACKAGE_CDROM=	${RESTRICTED}
PERMIT_PACKAGE_FTP=	${RESTRICTED}
PERMIT_DISTFILES_FTP=	${RESTRICTED}
WANTLIB=		c pcre


FETCH_MANUALLY=		"Please fetch ${DISTFILES} manually from"
FETCH_MANUALLY+=	"${HOMEPAGE}"
FETCH_MANUALLY+=	"and put into"
FETCH_MANUALLY+=	"${DISTDIR}"

LIB_DEPENDS=		devel/pcre
MODULES=		devel/cmake
NO_TESTS=		Yes

DADOCSDIR=		${TRUEPREFIX}/share/doc/deviceatlas-enterprise-c/

pre-install:
			mkdir -p ${WRKINST}${DADOCSDIR}examples
			cp -r ${WRKDIST}/Documentation/* ${WRKINST}${DADOCSDIR}
			cp {${WRKDIST}/examples/*.h,${WRKDIST}/examples/*.c} ${WRKINST}${DADOCSDIR}examples
			cp ${WRKBUILD}/examples/example* ${WRKINST}${DADOCSDIR}examples

do-install:
			${INSTALL_PROGRAM} ${WRKBUILD}/libda.so ${PREFIX}/lib
			${INSTALL_PROGRAM} ${WRKBUILD}/libda.so.${V} ${PREFIX}/lib
			${INSTALL_DATA} ${WRKDIST}/dac.h ${PREFIX}/include
			${INSTALL_DATA} ${WRKDIST}/dac_json.h ${PREFIX}/include

.include <bsd.port.mk>
