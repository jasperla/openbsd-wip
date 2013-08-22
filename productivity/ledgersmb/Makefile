# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

COMMENT=			financial accounting for small to medium size business

DISTNAME=			ledgersmb-1.3.33
CATEGORIES=			productivity
HOMEPAGE=			http://ledgersmb.org/

# GPLv2
PERMIT_PACKAGE_CDROM=		Yes

DISTFILES=			ledgersmb-1.3.33.tar.gz

MASTER_SITES+= \
		http://downloads.sourceforge.net/project/ledger-smb/ledgersmb/1.3.33/

WRKSRC=				${WRKDIR}/ledgersmb
WRKDIST=			${WRKSRC}

RUN_DEPENDS=		databases/postgresql,-server \
					databases/postgresql,-contrib \
					devel/p5-Log-Log4perl \
					devel/p5-Locale-Maketext-Lexicon \
					databases/p5-DBI \
					databases/p5-DBD-Pg \
					devel/p5-DateTime \
					www/p5-HTML-Template \
					www/p5-HTML-Tidy \
					www/p5-HTML-Tree \
					devel/p5-File-MimeInfo \
					www/p5-CGI-Simple \
					devel/p5-Error \
					textproc/p5-Template \
					mail/p5-MIME-Lite \
					devel/p5-Config-Std \
					math/p5-Math-BigInt-GMP

BUILD_DEPENDS=		${RUN_DEPENDS} \
					devel/p5-Module-Install

TEST_DEPENDS=		devel/p5-Test-Trap \
					devel/p5-Test-Exception \
					devel/p5-Test-Pod-Coverage \
					textproc/p5-Template-Plugin-Latex

#TEST_FLAGS=		LSMB_TEST_DB=Yes
#TEST_FLAGS+=		LSMB_NEW_DB=frog
#TEST_FLAGS+=		LSMB_ADMIN_USERNAME=root \
#LSMB_ADMIN_PASSWORD=password \
#LSMB_ADMIN_FNAME=Adminfirst \
#LSMB_ADMIN_LNAME=Adminlast \
#LSMB_COUNTRY_CODE=US

CONFIGURE_STYLE=	perl

# Need to pick and choose files from messy distfiles
pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ledgersmb/doc
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/ledgersmb/doc
	rm ${PREFIX}/share/ledgersmb/doc/Notes.Ubuntu \
		${PREFIX}/share/ledgersmb/doc/COPYRIGHT

	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/ledgersmb/utils
	chmod -R 0755 ${WRKSRC}/utils/*/*pl
	cp -R ${WRKSRC}/utils/* ${PREFIX}/share/ledgersmb/utils

	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/ledgersmb/tools
	chmod 0755 ${WRKSRC}/tools/*pl ${WRKSRC}/tools/*sh
	cp -R ${WRKSRC}/tools/* ${PREFIX}/share/ledgersmb/tools

	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/ledgersmb/contrib
	chmod 0755 ${WRKSRC}/contrib/replication/configure-replication.sh
	cp -R ${WRKSRC}/contrib/* ${PREFIX}/share/ledgersmb/contrib

	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/ledgersmb/drivers
	chmod 0755 ${WRKSRC}/drivers/pd3000.pl
	cp -R ${WRKSRC}/drivers/pd3000.pl ${PREFIX}/share/ledgersmb/drivers

	${INSTALL_DATA_DIR} ${PREFIX}/share/ledgersmb/web

	cp -R ${WRKSRC}/LedgerSMB \
		${WRKSRC}/UI \
		${WRKSRC}/bin \
		${WRKSRC}/css \
		${WRKSRC}/images \
		${WRKSRC}/locale \
		${WRKSRC}/scripts \
		${WRKSRC}/templates \
		${WRKSRC}/spool \
		${WRKSRC}/LedgerSMB.pm \
		${WRKSRC}/ledgersmb-httpd.conf.template \
		${WRKSRC}/ledgersmb.conf.default \
		${WRKSRC}/pos.conf.pl.template \
		${WRKSRC}/sql \
		${PREFIX}/share/ledgersmb/web

	${INSTALL_SCRIPT} ${WRKSRC}/*pl ${PREFIX}/share/ledgersmb/web
	rm ${PREFIX}/share/ledgersmb/web/install_interactive.pl

# Need to keep manual pages but don't want perl files into P5SITE
do-install:
	rm -R ${WRKSRC}/*pl
	${INSTALL_MAN} ${WRKSRC}/blib/man3/* ${PREFIX}/man/man3p
	cp -R ${WRKSRC}/LedgerSMB* ${PREFIX}/${P5SITE}

.include <bsd.port.mk>
