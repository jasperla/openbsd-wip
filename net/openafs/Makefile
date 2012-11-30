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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

SHARED_LIBS +=  afsauthent                1.1
SHARED_LIBS +=  afsrpc                    1.5
SHARED_LIBS +=  kopenafs                  1.1


MASTER_SITES=		http://www.openafs.org/dl/openafs/${VERSION}/

EXTRACT_SUFX=		.tar.gz
DOC_DISTFILE=		openafs-${VERSION}-doc
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}${EXTRACT_SUFX}

NO_REGRESS=		Yes

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.10
CONFIGURE_STYLE=	automake autoconf

CONFIGURE_ENV+=		INSTALL_DATA="install -c -m 444"
CONFIGURE_ARGS+=	KRB5CFLAGS="-I/usr/include/kerberosV" \
			KRB5LIBS="-lcrypto" \
			--with-krb5

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--with-afs-sysname=${ARCH}_obsd${OSrev} \
			--disable-transarc-paths \
			--enable-namei-fileserver \
			--enable-largefile-fileserver \
			--enable-supergroups

FLAVORS=	debug withcache
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

.if ${FLAVOR:L:Mwithcache}
CONFIGURE_ARGS+=	--enable-kernel-module
.else
CONFIGURE_ARGS+=	--disable-kernel-module
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--enable-debug-kernel
CONFIGURE_ARGS+=	--enable-debug-lwp
.endif

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
CONFIGURE_ARGS+=	--enable-littleendian
.else
CONFIGURE_ARGS+=	--enable-bigendian
.endif

post-extract:
	cd ${WRKSRC} && tar xzf ${FULLDISTDIR}/${DOC_DISTFILE}${EXTRACT_SUFX}

post-install:
.for dir in man1 man5 man8
	cd ${WRKSRC}/doc/man-pages/${dir} && pax -rw . ${PREFIX}/man
.endfor

.include <bsd.port.mk>
