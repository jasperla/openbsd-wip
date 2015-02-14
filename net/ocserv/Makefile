# $OpenBSD$

COMMENT=	server implementing the AnyConnect SSL VPN protocol

DISTNAME=	ocserv-0.9.0.1
WRKDIST=	${WRKDIR}/ocserv-0.9.0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/ocserv/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gnutls lz4 ncurses pam protobuf-c pthread readline talloc

MASTER_SITES=	ftp://ftp.infradead.org/pub/ocserv/

MODULES=	devel/gettext
LIB_DEPENDS=	archivers/lz4 \
		devel/protobuf-c>=1.0 \
		devel/libtalloc \
		security/gnutls>=3.1.10 \
		security/openpam

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_GROFF=	Yes # missing flags
# .NOP \f\*[B-Font]\-s\f[] \f\*[I-Font]file\f[], \f\*[B-Font]\-\-socket\-file\f[]=\f\*[I-Font]file\f[]
# There's also "ERROR: skipping unknown macro: .an-trap" but this is probably unimportant
CONFIGURE_ARGS=	--enable-local-libopts \
		--without-http-parser \
		--without-pcl-lib \
		--without-radius

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	perl -pi -e s,/etc/ocserv,${SYSCONFDIR}/ocserv, ${WRKSRC}/src/ocpasswd.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocserv
	cd ${WRKSRC}/doc; ${INSTALL_DATA} profile.xml sample.passwd \
	    ${PREFIX}/share/examples/ocserv/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${WRKSRC}/doc/sample.config \
	    ${PREFIX}/share/examples/ocserv/sample.config

.include <bsd.port.mk>
