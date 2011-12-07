# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-3.15
DIST_SUBDIR=	openconnect
VPNC_SCRIPT=	vpnc-script
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${VPNC_SCRIPT}:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

SHARED_LIBS +=  openconnect               0.0 # 1.2

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto iconv m modman proxy pthread ssl stdc++ xml2 z

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/
MASTER_SITES0=	http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/b4e61c979bc33252db0fd6d330d7bafa2034bd66:/

# used to format html during build, USE_GROFF not needed
BUILD_DEPENDS=		textproc/groff
MODULES=		lang/python
MODPY_RUNDEP=		No

LIB_DEPENDS=		textproc/libxml \
			net/libproxy>=0.4.6p7
FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/doc/openconnect

SEPARATE_BUILD=		simple
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-extract:
	cp ${FULLDISTDIR}/${VPNC_SCRIPT} ${WRKSRC}/vpnc-script

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openconnect/
	${INSTALL_SCRIPT} ${WRKSRC}/vpnc-script \
	    ${PREFIX}/share/examples/openconnect/

.include <bsd.port.mk>
