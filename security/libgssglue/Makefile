# $OpenBSD$


COMMENT=	gssapi glue library

DISTNAME=	libgssglue-0.4

SHARED_LIBS +=	gssglue                   0.0 # 1.0

CATEGORIES=	security

HOMEPAGE=	http://www.citi.umich.edu/projects/nfsv4/linux/libgssglue/

# various BSD/MIT licenses in source files, see COPYING
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.citi.umich.edu/projects/nfsv4/linux/libgssglue/

# dlopen() ... XXX maybe better not to enforce the dep?
RUN_DEPENDS=	security/heimdal

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CFLAGS+=	-DMECH_CONF=${SYSCONFDIR}/gssapi_mech.conf -DUSE_LINUX_SHARED_LIBRARIES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libgssglue/
	${SUBST_CMD} -c -m 644 -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/doc/gssapi_mech.conf \
		${PREFIX}/share/examples/libgssglue/gssapi_mech.conf

.include <bsd.port.mk>
