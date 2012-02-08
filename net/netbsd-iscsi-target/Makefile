# $OpenBSD$

COMMENT=	NetBSD's iSCSI (RFC 3720) target

DISTNAME=	netbsd-iscsi-20111006
PKGNAME=	${DISTNAME:S/-iscsi/-iscsi-target/}

CATEGORIES=	net sysutils

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE=	http://www.alistaircrooks.co.uk/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread

SHARED_LIBS +=	iscsi                0.0      # 0.2

MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

SRC_TARGET=	${WRKDIST}/src/target

pre-configure:
	@perl -pi -e 's,/etc/iscsi,${SYSCONFDIR}/iscsi,g' \
	    ${SRC_TARGET}/targets.5 ${SRC_TARGET}/iscsi-target.8

.include <bsd.port.mk>
