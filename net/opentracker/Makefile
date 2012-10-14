# $OpenBSD$

COMMENT =		high-performance torrent tracker

DISTNAME =		opentracker-20110401

CATEGORIES =		net

HOMEPAGE =		http://erdgeist.org/arts/software/opentracker/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Beerware; linking exception for libowfat
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

FLAVORS+=		accesslist_white accesslist_black
FLAVORS+=		sync_live ip_from_query_string
FLAVORS+=		compression_gzip compression_gzip_always
FLAVORS+=		log_networks restrict_stats
FLAVORS+=		ip_from_proxy fulllog_networks log_numwant
FLAVORS+=		modest_fullscrapes spot_woodpecker syslogs
FLAVORS+=		dev_random v6
FLAVOR?=

WANTLIB =		c pthread z

#MASTER_SITES =		???

BUILD_DEPENDS =		devel/libowfat	

WRKDIST =		${WRKDIR}/opentracker

ALL_TARGET =		opentracker

NO_REGRESS =		Yes

.if ${FLAVOR:Maccesslist_white} && ${FLAVOR:Maccesslist_black}
ERRORS+="Fatal: accesslist_white and accesslist_black flavors are mutually exclusive"
.endif

.for feature in ${FLAVORS}
.if ${FLAVOR:M${feature}}
FEATURES+=-DWANT_${feature:U}
.endif
.endfor

MAKE_FLAGS+=FEATURES="${FEATURES}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opentracker
	${INSTALL_DATA} ${WRKSRC}/opentracker.conf.sample \
		${PREFIX}/share/examples/opentracker/opentracker.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opentracker
.	for _f in README README_v6
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/opentracker
.	endfor

.include <bsd.port.mk>
