# $OpenBSD$

COMMENT=		Kerberos 5 implementation

DISTNAME=		heimdal-1.5.3

CATEGORIES=		security

SHARED_LIBS +=  heimbase             1.0      # 1.0
SHARED_LIBS +=  roken                2.0      # 19.0
SHARED_LIBS +=  heimedit             0.0      # 0.36
SHARED_LIBS +=  com_err              21.0     # 2.3
SHARED_LIBS +=  sl                   0.0      # 2.1
SHARED_LIBS +=  wind                 2.0      # 0.0
SHARED_LIBS +=  asn1                 21.0     # 8.0
SHARED_LIBS +=  heimsqlite           0.0      # unknown
SHARED_LIBS +=  hx509                0.0      # 5.0
SHARED_LIBS +=  krb5                 21.0     # 26.0
SHARED_LIBS +=  heimntlm             0.0      # 1.0
SHARED_LIBS +=  kafs                 21.0     # 5.1
SHARED_LIBS +=  gssapi               8.0      # 3.0
SHARED_LIBS +=  hdb                  2.0      # 11.0
SHARED_LIBS +=  kadm5srv             2.0      # 8.1
SHARED_LIBS +=  kadm5clnt            2.0      # 7.1
SHARED_LIBS +=  kdc                  2.0      # 2.0

HOMEPAGE=		http://www.h5l.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses pthread termcap util

MASTER_SITES=		http://www.h5l.org/dist/src/

USE_GROFF=		Yes
MAKE_ENV=		INSTALL_CATPAGES=no

BUILD_DEPENDS=		devel/bison

SYSCONFDIR=		${BASESYSCONFDIR}/heimdal

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/lib/libedit

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-afs-support \
			--disable-otp \
			--without-x

# install bins, libs and includes under a non-default PATH/PREFIX
CONFIGURE_ARGS +=	--bindir=${PREFIX}/heimdal/bin \
			--sbindir=${PREFIX}/heimdal/sbin \
			--libexecdir=${PREFIX}/heimdal/libexec \
			--libdir=${PREFIX}/heimdal/lib \
			--includedir=${PREFIX}/heimdal/include

RM_BIN=			bin/afslog \
			bin/ftp \
			bin/login \
			bin/pfrom \
			bin/rcp \
			bin/rsh \
			bin/su \
			bin/telnet \
			libexec/ftpd \
			libexec/popper \
			libexec/push \
			libexec/rshd \
			libexec/telnetd

RM_MAN=			man/man1/afslog.1 \
			man/man1/ftp.1 \
			man/man1/login.1 \
			man/man1/pfrom.1 \
			man/man1/rcp.1 \
			man/man1/rsh.1 \
			man/man1/su.1 \
			man/man1/rxtelnet.1 \
			man/man1/telnet.1 \
			man/man5/ftpusers.5 \
			man/man5/login.access.5 \
			man/man8/ftpd.8 \
			man/man8/popper.8 \
			man/man8/push.8 \
			man/man8/rshd.8 \
			man/man8/telnetd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/heimdal
	${INSTALL_DATA} ${FILESDIR}/krb5.conf \
		${PREFIX}/share/examples/heimdal/
	# fix bogus symlink
	cd ${PREFIX}/heimdal/man/man5/ && \
		ln -sf mech.5 qop.5
	# remove until proven useful
.for i in ${RM_BIN} ${RM_MAN}
	rm ${PREFIX}/heimdal/$i
.endfor

.include <bsd.port.mk>

# install mans under a non-default PATH/PREFIX
CONFIGURE_ARGS +=	--mandir=${PREFIX}/heimdal/man
