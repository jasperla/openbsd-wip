# $OpenBSD$

COMMENT=	Detect image spam with SpamAssassin

V=		svn133
DISTNAME=	fuzzyocr-${V}
PKGNAME=	fuzzyocr-3.5.1${V}
CATEGORIES=    	mail
WRKDIST=	${WRKDIR}/devel

HOMEPAGE=	http://fuzzyocr.own-hero.net/
MASTER_SITES=	http://openbsd.rutgers.edu/

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

RUN_DEPENDS=	::devel/p5-MLDBM-Sync \
		::graphics/gocr \
		::graphics/libungif \
		::graphics/netpbm \
		::graphics/ocrad \
		::graphics/ImageMagick \
		::graphics/gifsicle,no_x11 \
		::mail/p5-Mail-SpamAssassin \
		::textproc/p5-String-Approx

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

CONFDIR=	${SYSCONFDIR}/mail/spamassassin
SUBST_VARS=	CONFDIR
PKG_ARCH=	*

PMS=		Config.pm Deanimate.pm Hashing.pm Logging.pm Misc.pm \
		Preprocessor.pm Scanset.pm Scoring.pm

CONF=		FuzzyOcr.cf FuzzyOcr.mysql FuzzyOcr.preps FuzzyOcr.scansets \
		FuzzyOcr.words

do-install:
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr.pm ${PREFIX}/libdata/perl5/site_perl
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/FuzzyOcr
.for i in ${PMS}
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr/${i} \
		${PREFIX}/libdata/perl5/site_perl/FuzzyOcr
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/FuzzyOcr
.for i in ${CONF}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/examples/FuzzyOcr
.endfor

.include <bsd.port.mk>
