# $OpenBSD: Makefile.inc,v 1.12 2010/07/10 16:57:22 espie Exp $

VERSION ?=		${MODKDE4_VERSION}

CATEGORIES ?=		x11
CATEGORIES +=		x11/kde48
MODULES +=		x11/kde48

MASTER_SITES ?=		${MASTER_SITE_KDE:=unstable/${VERSION}/src/}
DIST_SUBDIR =		kde
HOMEPAGE ?=		https://projects.kde.org/projects
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# KDE SC is mostly GPL, or LGPL/BSDL for the central libraries
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes

# Do not rely on devel/cmake here: additional modules that are
# set up in ports may have, say, lang/python before devel/cmake,
# thus making lang/python evaluating first. And when lang/python
# sees empty CONFIGURE_STYLE, it forces that this is Python
# module port, and breaks build.
CONFIGURE_STYLE =	cmake

WRONG_SYSCONF_FILES ?=

post-install:
.for F D in ${WRONG_SYSCONF_FILES}
	rm -Rf ${PREFIX}/$D/$F
	${INSTALL_DATA_DIR} ${PREFIX}/$D
	cp -R ${WRKINST}${SYSCONFDIR}/$F ${PREFIX}/$D/$F
.endfor
