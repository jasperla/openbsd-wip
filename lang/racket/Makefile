# $OpenBSD$

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		Scheme dialect often used for teaching programming

V=			5.2.1
PKGNAME =		racket-$V
DISTNAME =		racket-$V-src-unix
CATEGORIES =		lang
HOMEPAGE =		http://racket-lang.org
MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://download.racket-lang.org/installers/${V}/racket/ \
			http://www.eecs.northwestern.edu/racket/${V}/racket/ \
			http://www.cs.utah.edu/plt/installers/${V}/racket/ \
			http://mirror.csclub.uwaterloo.ca/racket/racket-installers/${V}/racket/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/racket/ \
			http://russell.cs.bilgi.edu.tr/racket-installers/${V}/racket/ \
			http://racket.infogroep.be/${V}/racket/
EXTRACT_SUFX =		.tgz

VMEM_WARNING=		Yes

WANTLIB =		c m pthread
LIB_DEPENDS =		x11/gtk+2

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

.include <bsd.port.mk>
