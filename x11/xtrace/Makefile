# $OpenBSD$

COMMENT= 		X11 protocol tracer
V= 			1.3.1
DISTNAME= 		xtrace_$V.orig
PKGNAME= 		xtrace-$V

CATEGORIES= 		x11

HOMEPAGE= 		http://xtrace.alioth.debian.org/

MAINTAINER= 		Alexander Polakov <plhk@sdf.org>

# GPL v.2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
WRKDIST= 		${WRKDIR}/xtrace-$V

WANTLIB += c

MASTER_SITES= 		https://alioth.debian.org/frs/download.php/3733/

NO_REGRESS= 		Yes

.include <bsd.port.mk>
