# $OpenBSD: Makefile,v 1.45 2011/11/26 10:31:37 benoit Exp $

COMMENT =		extremely fast password cracker

V =			1.7.9
JV =			7

DISTNAME =		john-$V-jumbo-${JV}
PKGNAME =		john-jumbo-$Vpl${JV}
CATEGORIES =		security

HOMEPAGE =		http://www.openwall.com/john/

# GPL & Public Domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto glib-2.0 gobject-2.0 gsf-1 iconv intl m nspr4
WANTLIB += nss3 pcap plc4 plds4 pthread smime3 softokn3 ssl ssl3
WANTLIB += stdc++ xml2 z

MASTER_SITES =		http://www.openwall.com/john/g/
LIB_DEPENDS =		devel/libgsf \
			security/nss \
			textproc/libxml

USE_GMAKE =		Yes

WRKSRC =		${WRKDIST}/src

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -c -DHAVE_NSS `pkg-config --cflags nss`" \
			LDFLAGS="${LDFLAGS} -lssl -lcrypto -lm -lz `pkg-config --libs nss`" \
			HAVE_NSS="-DHAVE_NSS"

TEST_TARGET =		check

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		openbsd-x86-mmx
.elif ${MACHINE_ARCH} == "amd64"
ALL_TARGET=		openbsd-x86-64
.elif ${MACHINE_ARCH} == "sparc"
ALL_TARGET=		openbsd-sparc
.elif ${MACHINE_ARCH} == "vax"
ALL_TARGET=		openbsd-vax
.elif ${MACHINE_ARCH} == "alpha"
ALL_TARGET=		openbsd-alpha
.elif ${MACHINE_ARCH} == "powerpc"
ALL_TARGET=		openbsd-ppc32
.elif ${MACHINE_ARCH} == "powerpc64"
ALL_TARGET=		openbsd-ppc64
.elif ${MACHINE_ARCH} == "hppa"
ALL_TARGET=		openbsd-pa-risc
.elif ${MACHINE_ARCH} == "sparc64"
ALL_TARGET=		openbsd-sparc64
.else
ALL_TARGET=		generic
.endif

BINS=			office2john vncpcap2john SIPdump
ALL_TARGET+=		${BINS}

do-configure:
	${SUBST_CMD} ${WRKSRC}/params.h
	rm ${WRKSRC}/KRB4_*_plug.c # undefined reference to `des_set_odd_parity'

do-install:
	-@grep -h -v '^#!comment:' ${WRKDIST}/run/password.lst \
		/usr/share/dict/words | \
		${WRKDIST}/run/unique ${WRKDIST}/run/words.lst
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_PROGRAM} ${WRKDIST}/run/john ${PREFIX}/bin
.for i in ${BINS} calc_stat genmkvpwd mkvcalcproba tgtsnarf unafs unique unshadow
	${INSTALL_PROGRAM} ${WRKDIST}/run/$i ${PREFIX}/bin
.endfor
	${INSTALL_SCRIPT} ${WRKDIST}/run/mailer ${WRKDIST}/run/*.{pl,py,rb} ${PREFIX}/bin
.for i in mozilla2john pdf2john racf2john rar2john ssh2john
	ln -sf john ${PREFIX}/bin/$i
.endfor
	${INSTALL_DATA} ${WRKDIST}/run/john.conf ${PREFIX}/share/examples/john
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKDIST}/run/*.chr ${PREFIX}/share/john
	${INSTALL_DATA} ${WRKDIST}/run/words.lst ${PREFIX}/share/john/password.lst

.include <bsd.port.mk>
