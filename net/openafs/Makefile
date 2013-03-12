# $OpenBSD: Makefile,v 1.42 2012/06/21 13:54:14 sthen Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		OpenAFS distributed filesystem

VERSION=		1.6.1
DISTNAME=		openafs-${VERSION}-src
PKGNAME=		openafs-${VERSION}

CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# IBM Public License 1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c asn1 com_err crypto krb5 ncurses
WANTLIB+=		pthread


SHARED_LIBS +=  afsauthent                1.1
SHARED_LIBS +=  afsrpc                    1.5
SHARED_LIBS +=  kopenafs                  1.1


MASTER_SITES=		http://www.openafs.org/dl/openafs/${VERSION}/
MASTER_SITES0=		http://grand.central.org/dl/cellservdb/

EXTRACT_SUFX=		.tar.gz
DOC_DISTFILE=		openafs-${VERSION}-doc
CELLSRVDB=		CellServDB.2013-01-28
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}${EXTRACT_SUFX} ${CELLSRVDB}:0
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}${EXTRACT_SUFX}

NO_REGRESS=		Yes

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.10
CONFIGURE_STYLE=	automake autoconf

.if defined(SUDO)
MAKE_ENV+=		SUDO=sudo
.endif

CONFIGURE_ENV+=		INSTALL_DATA="install -c -m 444"
CONFIGURE_ARGS+=	KRB5CFLAGS="-I/usr/include/kerberosV" \
			KRB5LIBS="-lcrypto" \
			--with-krb5

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--with-afs-sysname=${ARCH}_obsd${OSrev} \
			--disable-transarc-paths \
			--enable-namei-fileserver \
			--enable-supergroups \
			--enable-pthreaded-ubik \
			--enable-kernel-module


FLAVORS=	debug fuse
FLAVOR?=

WRKDIST=	${WRKDIR}/openafs-${VERSION}

post-patch:
	@sed "s/%OSrev%/${OSrev}/g;s/%ARCH%/${ARCH}/g" \
		${FILESDIR}/param.obsd.h \
		> ${WRKSRC}/src/config/param.${ARCH}_obsd${OSrev}.h

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
	${SUBST_CMD} -c \
		${FILESDIR}/krb5.conf \
		${WRKSRC}/obsd.krb5.conf
	${INSTALL_DATA} -m 755 ${WRKSRC}/obsd.krb5.conf \
		${PREFIX}/share/examples/openafs/krb5.conf
	${SUBST_CMD} -c \
		${FILESDIR}/openafs-setup \
		${WRKSRC}/obsd.openafs-setup
	${INSTALL_PROGRAM} -m 755 ${WRKSRC}/obsd.openafs-setup \
		${PREFIX}/sbin/openafs-setup

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--enable-debug-kernel
CONFIGURE_ARGS+=	--enable-debug-lwp
.endif

.if ${FLAVOR:L:Mfuse}
CONFIGURE_ARGS+=	--enable-fuse-client
.endif

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
CONFIGURE_ARGS+=	--enable-littleendian
.else
CONFIGURE_ARGS+=	--enable-bigendian
.endif

post-patch:
	@sed "s/%OSrev%/${OSrev}/g;s/%ARCH%/${ARCH}/g" \
		${FILESDIR}/param.obsd.h \
		> ${WRKSRC}/src/config/param.${ARCH}_obsd${OSrev}.h

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
	${SUBST_CMD} -c \
		${FILESDIR}/krb5.conf \
		${WRKSRC}/obsd.krb5.conf
	${INSTALL_DATA} -m 755 ${WRKSRC}/obsd.krb5.conf \
		${PREFIX}/share/examples/openafs/krb5.conf
	${SUBST_CMD} -c \
		${FILESDIR}/openafs-setup \
		${WRKSRC}/obsd.openafs-setup
	${INSTALL_PROGRAM} -m 755 ${WRKSRC}/obsd.openafs-setup \
		${PREFIX}/sbin/openafs-setup
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
	${INSTALL_DATA} ${FULLDISTDIR}/${CELLSRVDB} \
		${PREFIX}/share/examples/openafs/CellServDB
	${INSTALL_DATA} ${FILESDIR}/cacheinfo ${PREFIX}/share/examples/openafs

.include <bsd.port.mk>
