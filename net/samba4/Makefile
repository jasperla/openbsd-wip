# $OpenBSD$

SHARED_ONLY =		Yes
COMMENT =		SMB and CIFS client and server for UNIX
DISTNAME =		samba-4.0.5
REVISION =		4

SHARED_LIBS =		asn1-samba4		0.0 \
			com_err-samba4		0.0 \
			dcerpc			0.0 \
			dcerpc-atsvc		0.0 \
			dcerpc-binding		0.0 \
			dcerpc-samr		0.0 \
			dcerpc-server		0.0 \
			gensec			0.0 \
			gssapi-samba4		0.0 \
			hcrypto-samba4		0.0 \
			hdb-samba4		0.0 \
			heimbase-samba4		0.0 \
			heimntlm-samba4		0.0 \
			hx509-samba4		0.0 \
			kdc-samba4		0.0 \
			krb5-samba4		0.0 \
			ldb			0.0 \
			mit_samba		0.0 \
			ndr			0.0 \
			ndr-krb5pac		0.0 \
			ndr-nbt			0.0 \
			ndr-standard		0.0 \
			netapi			0.0 \
			nss_wins		0.0 \
			pdb			0.0 \
			pyldb-util		0.0 \
			pytalloc-util		0.0 \
			registry		0.0 \
			roken-samba4		0.0 \
			samba-credentials	0.0 \
			samba-hostconfig	0.0 \
			samba-policy		0.0 \
			samba-util		0.0 \
			samdb			0.0 \
			smbclient		0.0 \
			smbclient-raw		0.0 \
			smbconf			0.0 \
			smbldap			0.0 \
			smbsharemodes		0.0 \
			talloc			0.0 \
			tdb			0.0 \
			tevent			0.0 \
			tevent-util		0.0 \
			torture			0.0 \
			wbclient		0.0 \
			wind-samba4		0.0 \
			winbind_krb5_locator	0.0

CATEGORIES =		net sysutils security

HOMEPAGE =		http://www.samba.org/

#MAINTAINER =		???

# GPLv3, LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += avahi-client avahi-common c cups execinfo iniparser
WANTLIB += lber ldap pam popt pthread sasl2 util z ${MODPY_WANTLIB}

MASTER_SITES =		http://ftp.samba.org/pub/samba/stable/ \
			http://ftp.samba.org/pub/samba/old-versions/

MODULES =		devel/gettext lang/python

# TODO check if GNUtls is needed at all.

BUILD_DEPENDS =		security/gnutls \
			textproc/docbook-xsl \
			textproc/libxslt

RUN_DEPENDS =		security/gnutls

LIB_DEPENDS =		databases/openldap \
			devel/iniparser \
			devel/libexecinfo \
			devel/popt \
			net/avahi \
			print/cups,-libs \
			security/cyrus-sasl2 \
			security/openpam
#TEST_DEPENDS =		

CONFIGURE_STYLE =	simple
# XXX Remember to remove --enable-developer, it prints passwords in logs.
CONFIGURE_ARGS =	--enable-fhs \
			--abi-check-disable \
			--prefix=${PREFIX} \
			--destdir=${WRKINST} \
			--docdir=${PREFIX}/share/doc \
			--mandir=${PREFIX}/man \
			--localedir=${PREFIX}/share/locale \
			--localstatedir=/var \
			--sharedstatedir=/var \
			--sysconfdir=${SYSCONFDIR} \
			--with-statedir=/var/samba \
			--with-privatedir=/var/samba/private \
			--with-lockdir=/var/run/samba \
			--with-privileged-socket-dir=/var/samba \
			--enable-developer \
			--enable-selftest \
			--private-libraries="!asn1_compile !com_err !crypto" \
			--pedantic

WAF =			${WRKSRC}/buildtools/bin/waf
WAF_ARGS =		-v -j ${MAKE_JOBS}
PKG_CONFIG_PATH =	${WRKDIR}/pkgconfig

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8 \
			PKG_CONFIG_PATH=${PKG_CONFIG_PATH}

MAKE_ENV =		LC_ALL=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			WAF_ARGS="${WAF_ARGS}"

.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=		LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor

SAMBA4_PYTHON_PKGPATH =	${PREFIX}/lib/python${MODPY_VERSION}/site-packages

post-extract:
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	mkdir ${PKG_CONFIG_PATH}
	cp ${FILESDIR}/*.pc ${PKG_CONFIG_PATH}

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/lib/testtools/testtools/tests/test_compat.py

# Avoid bogus -L/usr/local/lib at the start of linker options
post-configure:
	perl -pi.ldflags -e 's/^LINKFLAGS_PYEMBED.*/LINKFLAGS_PYEMBED = []/' \
	    ${WRKBUILD}/bin/c4che/default.cache.py

post-install:
	@find ${PREFIX} -name '*${PATCHORIG}' -or -name '*.beforesubst' | \
	    xargs -rt rm --
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${SAMBA4_PYTHON_PKGPATH}
	${MODPY_BIN} -O ${MODPY_LIBDIR}/compileall.py \
		${SAMBA4_PYTHON_PKGPATH}

HEIMDAL_LIBS =		asn1 com_err gssapi krb5 

# XXX Method of taking library is flawed, it will break for numbers
# with different count of digits.

.for _l in ${HEIMDAL_LIBS}
HLIB_${_l}_OS =		find /usr/lib -name 'lib${_l}.so.*' | sort -nr | head -1
HLIB_${_l}_SAMBA4 =	find ${WRKINST}${PREFIX}/lib -name 'lib${_l}-samba4.so.*' | sort -nr | head -1
HLIB_DIFF +=		diff -u oslib.${_l}.nmout samba4lib.${_l}.nmout;

oslib.${_l}.nmout: .PHONY
	nm $$(${HLIB_${_l}_OS}) | awk '$$2 == "T" {print $$3}' | sort >$@
samba4lib.${_l}.nmout: fake .PHONY
	nm $$(${HLIB_${_l}_SAMBA4}) | awk '$$2 == "T" {print $$3}' | sort >$@
list-conflicting-symbols: oslib.${_l}.nmout samba4lib.${_l}.nmout
.endfor	

list-conflicting-symbols:
	@echo "====> Following conflicts with system libraries detected: "
	@(${HLIB_DIFF}) | awk '/^ / {print $$1}' | sort -u

.include <bsd.port.mk>
