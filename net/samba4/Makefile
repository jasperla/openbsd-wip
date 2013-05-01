# $OpenBSD$

SHARED_ONLY =		Yes
COMMENT =		SMB and CIFS client and server for UNIX
DISTNAME =		samba-4.0.5
REVISION =		0

SHARED_LIBS =		dcerpc-atsvc		0.0 \
			dcerpc-binding		0.0 \
			dcerpc-samr		0.0 \
			dcerpc-server		0.0 \
			dcerpc			0.0 \
			gensec			0.0 \
			ndr-krb5pac		0.0 \
			ndr-nbt			0.0 \
			ndr-standard		0.0 \
			ndr			0.0 \
			registry		0.0 \
			samba-credentials	0.0 \
			samba-hostconfig	0.0 \
			samba-policy		0.0 \
			samba-util		0.0 \
			samdb			0.0 \
			smbclient-raw		0.0 \
			smbclient		0.0 \
			tevent-util		0.0 \
			torture			0.0 \
			wbclient		0.0

CATEGORIES =		net sysutils security

HOMEPAGE =		http://www.samba.org/

#MAINTAINER =		???

# GPLv3, LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += avahi-client avahi-common c cups execinfo iniparser
WANTLIB += lber ldap popt pthread sasl2 util z ${MODPY_WANTLIB}

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
			--sysconfdir=${SYSCONFDIR} \
			--with-statedir=/var/samba \
			--with-privatedir=/var/samba/private \
			--with-lockdir=/var/run/samba \
			--with-privileged-socket-dir=/var/samba \
			--enable-developer \
			--enable-selftest \
			--pedantic \
			--without-pam

WAF =			${WRKSRC}/buildtools/bin/waf
WAF_ARGS =		-v -j ${MAKE_JOBS}

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8

MAKE_ENV =		LC_ALL=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			WAF_ARGS="${WAF_ARGS}"

post-extract:
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/lib/testtools/testtools/tests/test_compat.py

# Avoid bogus -L/usr/local/lib at the start of linker options
post-configure:
	perl -pi.ldflags -e 's/^LINKFLAGS_PYEMBED.*/LINKFLAGS_PYEMBED = []/' \
	    ${WRKBUILD}/bin/c4che/default.cache.py

pre-install:
.for _l _v in ${SHARED_LIBS}
	rm -f ${PREFIX}/lib/lib${_l}.so.${_v}
.endfor

# XXX Need to handle com_err-samba4 shared library, too.
post-install:
.for _l _v in ${SHARED_LIBS}
	rm -f ${PREFIX}/lib/lib${_l}.so.+([0-9])
	rm -f ${PREFIX}/lib/lib${_l}.so
	if [ -f ${PREFIX}/lib/lib${_l}.so.+([0-9]).+([0-9]).+([0-9]) ]; then \
		mv ${PREFIX}/lib/lib${_l}.so.+([0-9]).+([0-9]).+([0-9]) \
		   ${PREFIX}/lib/lib${_l}.so.${_v}; \
	elif [ ${PREFIX}/lib/lib${_l}.so.+([0-9]).+([0-9]) != \
	     ${PREFIX}/lib/lib${_l}.so.${_v} ]; then \
		mv ${PREFIX}/lib/lib${_l}.so.+([0-9]).+([0-9]) \
		   ${PREFIX}/lib/lib${_l}.so.${_v}; \
	fi
	ln -s lib${_l}.so.${_v} `echo '${PREFIX}/lib/lib${_l}.so.${_v}' | \
	    sed -Ee 's/\.[0-9]+$$//'`
.endfor

.include <bsd.port.mk>
