# $OpenBSD$

COMMENT=	insecure tcpdump

DISTNAME=	tcpdump-4.5.1

CATEGORIES=	net

HOMEPAGE=	http://www.tcpdump.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.tcpdump.org/release/

WANTLIB += c crypto pcap

MAKE_FLAGS=	PROG=unsafe_tcpdump
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-user=_tcpdump \
		--with-chroot=/var/empty
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

post-install:
	rm -f ${PREFIX}/sbin/unsafe_tcpdump.*

.include <bsd.port.mk>
