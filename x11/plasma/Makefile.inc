# $OpenBSD$

CATEGORIES +=		x11 x11/plasma

VERSION ?=		5.10.1
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>
HOMEPAGE ?=		https://projects.kde.org/projects/kde/workspace/${DISTNAME:C/-[0-9].*//}

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	cmake
MODULES :=		devel/kf5 ${MODULES}

MASTER_SITES =		${MASTER_SITE_KDE:=stable/plasma/${VERSION}/}

KDE4_L10N_CONFLICT ?=	No
.if ${KDE4_L10N_CONFLICT:L} != "no"
PKG_ARGS +=		-f ${.CURDIR}/../PFRAG.l10n
.endif

DIST_SUBDIR =		kde
