# $OpenBSD$

SHARED_ONLY =		Yes
COMMENT =		SMB and CIFS client and server for UNIX
DISTNAME =		samba-4.0.4
REVISION =		0

SHARED_LIBS =		wbclient		0.0 \
			com_err-samba4		0.0 \
			dcerpc-atsvc 0.0 \
			dcerpc-binding 0.0 \
			dcerpc-samr 0.0 \
			dcerpc-server 0.0 \
			dcerpc 0.0 \
			gensec 0.0 \
			ndr-krb5pac 0.0 \
			ndr-nbt 0.0 \
			ndr-standard 0.0 \
			ndr 0.0 \
			registry 0.0 \
			samba-credentials 0.0 \
			samba-hostconfig 0.0 \
			samba-policy 0.0 \
			samba-util 0.0 \
			samdb 0.0 \
			smbclient-raw 0.0 \
			smbclient 0.0 \
			tevent-util 0.0 \
			torture 0.0 \
			wbclient 0.0

CATEGORIES =		net sysutils security

HOMEPAGE =		http://www.samba.org/

#MAINTAINER =		???

# GPLv3, LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		http://ftp.samba.org/pub/samba/stable/ \
			http://ftp.samba.org/pub/samba/old-versions/

MODULES =		devel/gettext lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/libxslt
#RUN_DEPENDS =		???

LIB_DEPENDS =		databases/openldap \
			devel/libexecinfo \
			net/avahi \
			security/gnutls
#TEST_DEPENDS =		

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	configure \
			--enable-fhs \
			--abi-check-disable \
			--prefix=${PREFIX} \
			--destdir=${WRKINST} \
			--docdir=${PREFIX}/share/doc \
			--mandir=${PREFIX}/man \
			--localedir=${PREFIX}/share/locale \
			--localstatedir=/var \
			--sharedstatedir=/var \
			--with-statedir=/var/samba \
			--with-privatedir=/var/samba/private \
			--with-lockdir=/var/run/samba \
			--with-privileged-socket-dir=/var/samba \
			--enable-developer \
			--enable-selftest \
			--pedantic \
			--without-pam

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8
MAKE_ENV =		PYTHON=${MODPY_BIN} LC_ALL=en_US.UTF-8
#COPTS =			-Wno-unused

WAF =			${WRKSRC}/buildtools/bin/waf

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/lib/testtools/testtools/tests/test_compat.py
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin

do-build:
	cd ${WRKBUILD} && env -i ${MAKE_ENV} ${WAF} -v -j ${MAKE_JOBS} build

post-install:
	cd ${PREFIX}/share/perl5 && for D in *; do \
		rm -Rf ${PREFIX}/libdata/perl5/$D; \
		mv $D ${PREFIX}/libdata/perl5/; \
	done

.include <bsd.port.mk>
