# $OpenBSD: Makefile.inc,v 1.5 2016/12/28 08:21:41 zhuk Exp $

.if !defined(CATEGORIES)
ERRORS +=		"Fatal: missing CATEGORIES"
.endif
CATEGORIES +=		x11/kde-applications

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

KDE5 ?=			No
.if ${KDE5:L} == "yes"
MODULES +=		devel/kf5
VERSION ?=		16.12.3
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}
.else
MODULES +=		x11/kde4
VERSION ?=		15.12.3
MASTER_SITES ?=		${MASTER_SITE_KDE:=Attic/applications/${VERSION}/src/}
.endif
