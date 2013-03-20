# $OpenBSD$

COMMENT =		open-source MTA

V =			8.14.6
DISTNAME =		sendmail.$V
PKGNAME =		sendmail-$V

CATEGORIES =		mail

HOMEPAGE =		http://www.sendmail.com/sm/open_source/

# Sendmail License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto sasl2 ssl

MASTER_SITES =		ftp://ftp.sendmail.org/pub/sendmail/

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		security/cyrus-sasl2
#TEST_DEPENDS =	???

MAKE_FLAGS =		M4=/usr/bin/m4 O="${CFLAGS}" \
			TRUEPREFIX="${TRUEPREFIX}"
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =	???

#USE_GROFF =		Yes

#NO_TEST =		Yes

WRKDIST =		${WRKDIR}/sendmail-$V

INSTALL_TARGET =	install install-docs
#TEST_TARGET =	???

post-install:
	cd ${WRKSRC}/obj.OpenBSD.${OSREV}.${MACHINE_ARCH}/mail.local && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
		force-install
	${INSTALL_DATA_DIR} ${PREFIX}/share/sendmail
	cd ${WRKSRC}/cf && pax -rw . ${PREFIX}/share/sendmail
	${INSTALL_DATA} ${FILESDIR}/openbsd-* ${PREFIX}/share/sendmail/cf

.include <bsd.port.mk>
