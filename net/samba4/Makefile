# $OpenBSD$

SHARED_ONLY =		Yes
DISTNAME =		samba-4.0.5

COMMENT-main =		SMB and CIFS client and server for UNIX
COMMENT-ldb =		LDAP-like embedded database
#COMMENT-ntdb =		new trivial database library
COMMENT-talloc =	hierarchical memory pool system with destructors
COMMENT-tdb =		trivial database library
COMMENT-tevent =	event system based on talloc

PKGNAME-main =		${PKGNAME}
PKGNAME-ldb =		ldb-${LDB_V}
#PKGNAME-ntdb =		ntdb-${NTDB_V}
PKGNAME-talloc =	libtalloc-${TALLOC_V}
PKGNAME-tdb =		tdb-${TDB_V}
PKGNAME-tevent =	tevent-${TEVENT_V}

LDB_V =			1.1.15
#NTDB_V =		0.9
TALLOC_V =		2.0.7
TDB_V =			1.2.11
TEVENT_V =		0.9.18

REVISION-main =		12
REVISION-ldb =		1
REVISION-talloc =	1
REVISION-tdb =		1
REVISION-tevent =	1

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
			talloc			1.0 \
			tdb			4.0 \
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

WANTLIB-common =	m pthread util ${MODPY_WANTLIB}

WANTLIB-main =		${WANTLIB-common} ${MODGETTEXT_WANTLIB} c ncurses z
WANTLIB-main +=		avahi-client avahi-common cups execinfo iniparser lber
WANTLIB-main +=		ldap pam popt sasl2 gcrypt gnutls
WANTLIB-main +=		ldb pyldb-util pytalloc-util talloc tdb tevent

WANTLIB-ldb =		${WANTLIB-common} c popt talloc tdb tevent
WANTLIB-talloc =	${WANTLIB-common}
WANTLIB-tdb =		${WANTLIB-common} c talloc
WANTLIB-tevent =	${WANTLIB-common} talloc

MASTER_SITES =		http://ftp.samba.org/pub/samba/stable/ \
			http://ftp.samba.org/pub/samba/old-versions/

MULTI_PACKAGES =	-main -ldb -talloc -tdb -tevent
#MULTI_PACKAGES +=	-ntdb		# disabled by default in Samba4

MODULES =		devel/gettext lang/python

# TODO check if GNUtls is needed at all.

BUILD_DEPENDS =		net/py-dnspython \
			textproc/docbook-xsl \
			textproc/libxslt

RUN_DEPENDS-main =	net/py-dnspython

LIB_DEPENDS-main =	${BUILD_PKGPATH},-ldb>=${LDB_V} \
			${BUILD_PKGPATH},-talloc>=${TALLOC_V} \
			${BUILD_PKGPATH},-tdb>=${TDB_V} \
			${MODGETTEXT_LIB_DEPENDS} \
			databases/openldap \
			devel/iniparser \
			devel/libexecinfo \
			net/avahi \
			print/cups,-libs \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libgcrypt \
			security/openpam
#LIB_DEPENDS-main +=	${BUILD_PKGPATH},-ntdb>=${NTDB_V}

LIB_DEPENDS-ldb =	${BUILD_PKGPATH},-tdb>=${TDB_V} \
			${BUILD_PKGPATH},-tevent>=${TEVENT_V} \
			devel/popt

LIB_DEPENDS-talloc =

LIB_DEPENDS-tdb =	${BUILD_PKGPATH},-talloc>=${TALLOC_V}

LIB_DEPENDS-tevent =	${BUILD_PKGPATH},-talloc>=${TALLOC_V}

CONFIGURE_STYLE =	simple
# XXX Remember to remove --enable-developer, it prints passwords in logs.
CONFIGURE_ARGS =	--enable-fhs \
			--abi-check-disable \
			--bundled-libraries="!crypto ldb ntdb talloc tdb tevent" \
			--prefix=${PREFIX} \
			--destdir=${WRKINST} \
			--docdir=${PREFIX}/share/doc \
			--mandir=${PREFIX}/man \
			--localedir=${PREFIX}/share/locale \
			--localstatedir=/var \
			--private-libraries="!ldb !ntdb !talloc !tdb !tevent" \
			--sharedstatedir=/var \
			--sysconfdir=${SYSCONFDIR} \
			--with-statedir=/var/samba \
			--with-privatedir=/var/samba/private \
			--with-lockdir=/var/run/samba \
			--with-privileged-socket-dir=/var/samba \
			--enable-developer \
			--enable-selftest \
			--pedantic

WAF =			${WRKSRC}/buildtools/bin/waf
WAF_ARGS =		-v -j ${MAKE_JOBS}

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8

MAKE_ENV =		LC_ALL=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			WAF_ARGS="${WAF_ARGS}"

.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=		LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/lib/testtools/testtools/tests/test_compat.py

pre-configure: replace-conflicting-symbols
	@true

# Avoid bogus -L/usr/local/lib at the start of linker options
post-configure:
	perl -pi.ldflags -e 's/^LINKFLAGS_PYEMBED.*/LINKFLAGS_PYEMBED = []/' \
	    ${WRKBUILD}/bin/c4che/default.cache.py

post-install:
	@find ${PREFIX} \
	    -name '*${PATCHORIG}' -or \
	    -name '*.beforesubst' -or \
	    -name '*.deconforig' | \
		xargs -rt rm --
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}${MODPY_SITEPKG}
	${MODPY_BIN} -O ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}${MODPY_SITEPKG}

#
# Here begins code to deal with conflicting symbols between system
# and Samba4-bundled Heimdal Kerberos implementations. How it works:
#
# 1. Get list of actually conflicting dynamic symbols, by comparing
#    output of nm(1) for system library and the one from fake dir.
#
# 2. Extract list of types used in code, compiled with ASN1. Note, that
#    some static patches for ASN1 compiler are required for build too,
#    see patches for source4/heimdal/asn1/gen_* files. This list is put
#    in ${WRKDIR}/asn1.types.
#
# 3. If any more types need to be tweaked, too, list them manually in
#    ${FILESDIR}/extra.types.
#
# 4. Build the full list of (potentially) conflicting symbols, it is
#    put in ${WRKDIR}/asn1.conflicts.
#
# 5. Build the list of other conflicting symbols, it is put in
#    ${WRKDIR}/other.conflicts.
#
# 6. Now we can cross our fingers and run replace-conflicting-symbols.
#    It should append "_SAMBA4" to all conflicting symbols in all
#    source files from asn1.conflicts and other.conflicts. Backups
#    for each modified file will be saved with .deconforig suffix.
#
# 7. If replacing gone wrong, or for any other reason, you can revert
#    replacing by running restore-conflicts target. So usual process
#    when you detect missing extra ASN1 type or any other conflicting
#    symbol name, is to add a line to the corresponding file, run
#    "make restore-conflicts replace-conflicting-symbols", and then
#    continue building.
#

.include <bsd.port.mk>

# List of Kerberos libraries to check. Probably we could
# patch out com_err from this list eventually...
HEIMDAL_LIBS =		asn1 com_err gssapi krb5 

# Symbols that are safe to be present in every binary.
SAFE_SYMBOLS =		__data_start __divdi3 _fini __got_start __got_end _init

# We detect ASN1-compiled symbols by looking at those prefixes.
# Then, we also use them to generate full list of ASN1 symbols.
CHECK_PREFIXES =	copy_ decode_ encode_ free_ int2 length_
CHECK_PREFIXES +=	der_copy_ der_free_ der_get_ der_length_ der_match_ der_put_ 

.for _v in HEIMDAL_LIBS SAFE_SYMBOLS CHECK_PREFIXES ERROR_TABLES_FOR
.   for _l in ${${_v}}
_t :=	${_t}|${_l}
.   endfor
${_v}_RE =	${_t:S/^|//}
.endfor

SORT_LIBS_CMD =		perl ${FILESDIR}/sortlibs

.for _l in ${HEIMDAL_LIBS}
HLIB_${_l}_SYM_OS =	${FILESDIR}/oslib.${_l}.nmout
HLIB_${_l}_SYM_SAMBA4 =	${FILESDIR}/samba4lib.${_l}.nmout
HLIB_${_l}_OS =		find /usr/lib -name 'lib${_l}.so.*' | \
			${SORT_LIBS_CMD} | head -1
HLIB_${_l}_SAMBA4 =	find ${WRKINST}${PREFIX}/lib -name 'lib${_l}-samba4.so.*' | \
			${SORT_LIBS_CMD} | head -1
HLIB_DIFF +=		diff -U 100000 ${HLIB_${_l}_SYM_OS} ${HLIB_${_l}_SYM_SAMBA4} || true;
HLIB_ALL +=		${HLIB_${_l}_SYM_OS} ${HLIB_${_l}_SYM_SAMBA4}

${HLIB_${_l}_SYM_OS}:
	nm $$(${HLIB_${_l}_OS}) | \
		awk '$$2 == "T" || $$2 == "D" {print $$3}' | \
		sort >$@.tmp
	mv $@.tmp $@

# XXX Do not add "fake" as a dependency, or this will force running fake
# for all dependees, incliding replace-conflicting-symbols.
${HLIB_${_l}_SYM_SAMBA4}:
	@${MAKE} fake
	nm $$(${HLIB_${_l}_SAMBA4}) | awk '$$2 == "T" || $$2 == "D" {print $$3}' | \
		sed -e 's/_SAMBA4//g' | \
		sort >$@.tmp
	mv $@.tmp $@
.endfor	

# Some file names macros. Easily generated ones go under ${WRKDIR},
# others, needing semi- of fully-manual tweaking, should stay under
# ${FILESDIR}.
FOUND_TYPES =		${WRKDIR}/found.types
EXTRA_TYPES =		${FILESDIR}/extra.types
ASN1_CONFLICTS =	${WRKDIR}/asn1.conflicts
COM_ERR_TABLES =	${FILESDIR}/com_err.tables
COM_ERR_CONFLICTS =	${WRKDIR}/com_err.conflicts
OTHER_CONFLICTS =	${WRKDIR}/other.conflicts
DETECTED_CONFLICTS =	${WRKDIR}/detected.conflicts

ASN1_TYPES =		${FOUND_TYPES} ${EXTRA_TYPES}

${DETECTED_CONFLICTS}: ${HLIB_ALL}
	(${HLIB_DIFF}) | \
		awk '/^ / {print $$1}' | \
		egrep -v '^(${SAFE_SYMBOLS_RE})$$' | \
		sort -u >$@.tmp
	mv $@.tmp $@

find-conflicting-symbols: ${DETECTED_CONFLICTS} .PHONY
	@cat ${DETECTED_CONFLICTS}

# List of all types for which routines are generated by ASN compiler.
${FOUND_TYPES}: ${HLIB_ALL}
	cat ${HLIB_ALL} | \
		egrep -v '^${SAFE_SYMBOLS_RE}$$' | \
		awk '/${CHECK_PREFIXES_RE}/ { sub("${CHECK_PREFIXES_RE}", ""); print }' | \
		sort -u >$@.tmp
	mv $@.tmp $@

# Full list of symbols generated by ASN compiler. This supersedes
# list of actually conflicting symbols.
${ASN1_CONFLICTS}: ${ASN1_TYPES}
	rm -f $@.tmp
.for _p in ${CHECK_PREFIXES}
	cat ${ASN1_TYPES} | sed -e 's/^/${_p}/' >>$@.tmp
.endfor
	cat ${ASN1_TYPES} | sed -e 's/^/asn1_/' -e 's/$$/_units/' >>$@.tmp
	cat ${ASN1_TYPES} | sed -e 's/^/int2/' >>$@.tmp
	cat ${ASN1_TYPES} | sed -e 's/$$/2int/' >>$@.tmp
	mv $@.tmp $@

# Could those tables be detected dynamically? Will it be better?
${COM_ERR_CONFLICTS}: ${COM_ERR_TABLES}
	awk '{L="initialize_" $$0 "_error_table"; print L; print L "_r"}' \
		<${COM_ERR_TABLES} >$@.tmp
	mv $@.tmp $@

# Other conflicting symbols, that could be easily replaced on their own
${OTHER_CONFLICTS}: ${DETECTED_CONFLICTS} ${ASN1_CONFLICTS} ${COM_ERR_CONFLICTS}
	cat ${ASN1_CONFLICTS} ${COM_ERR_CONFLICTS} | \
		sort -u | \
		diff -u ${DETECTED_CONFLICTS} - | \
		awk '/^-[^-]/ {sub("^-", ""); print}' >$@.tmp
	mv $@.tmp $@

# List of files containing potentially conflicting symbol names, one per line
CONFLICT_LISTS =	${ASN1_CONFLICTS} ${OTHER_CONFLICTS} ${COM_ERR_CONFLICTS}

REPLACE_COOKIE =	${WRKDIR}/.replace-conflicting-symbols_started
REPLACE_COOKIE_OK =	${WRKDIR}/.replace-conflicting-symbols_done
replace-conflicting-symbols: patch ${CONFLICT_LISTS} .PHONY
	@if [ -e ${REPLACE_COOKIE:Q} -a ! -e ${REPLACE_COOKIE_OK:Q} ]; then \
		echo "Process of replacing conflicting symbols failed recently," >&2; \
		echo "so, please, cleanup first, using make restore-conflicts." >&2; \
		false; \
	elif [ -e ${REPLACE_COOKIE_OK:Q} ]; then \
		echo "Conflicting symbols already replaced, skipping." >&2; \
		echo "If you want to re-run replace process, then run" >&2; \
		echo "make restore-conflicts first." >&2; \
	else \
		touch -- ${REPLACE_COOKIE:Q}; \
		echo "====> Replacing potentially conflicting Heimdal symbols"; \
		cd ${WRKSRC} && find . -type f \! -path './b*' \! -name 'wscript*' -print0 | \
		xargs -0 perl -pi.deconforig \
			-e "!/#[\s]*include/ and s/\\b($$(sort -u ${CONFLICT_LISTS} | xargs | tr ' ' '|'))\\b/\$$&_SAMBA4/g;" \
			-e "close ARGV if eof;" --; \
		find ${WRKSRC} -name '*.deconforig' | while read F; do \
			cmp -s -- "$$F" "$${F%.deconforig}" && rm -- "$$F"; \
		done; \
		touch -- ${REPLACE_COOKIE_OK:Q}; \
	fi

restore-conflicts: patch .PHONY
	@find ${WRKSRC} -name '*.deconforig' | while read F; do \
		mv -- "$$F" "$${F%.deconforig}"; \
	done
	@rm -f -- ${REPLACE_COOKIE_OK:Q} ${REPLACE_COOKIE:Q}

show-conflicts-diff: .PHONY
	-@find ${WRKSRC} -name '*.deconforig' | while read F; do \
		diff -uNp -- "$$F" "$${F%.deconforig}"; \
	done
