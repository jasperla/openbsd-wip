# $OpenBSD: Makefile.inc,v 1.30 2020/10/23 07:04:09 landry Exp $

MAINTAINER ?=	Dimitri Karamazov <deserter666@danwin1210.me>

HOMEPAGE ?=	https://freenetproject.org/

PERMIT_PACKAGE ?=Yes

CATEGORIES =	net

APP_NAME =	freenet
APP_VER =	0.7.5.20210502
GH_ACCOUNT =	freenet

DB_DIR =	${LOCALSTATEDIR}/freenet

SUBST_VARS +=	DB_DIR

MODULES ?=	java
MODJAVA_VER ?=	1.8

ADDON_NAME ?=
.if !empty(ADDON_NAME)

PKGNAME ?=	plugin-${ADDON_NAME:L}-${V}

MODJAVA_BUILD ?=ant
MODJAVA_BUILD_TARGET_NAME ?=dist
MODJAVA_BUILD_ARGS +=-Dtest.skip=true

RUN_DEPENDS +=	net/freenet/fred
BUILD_DEPENDS +=archivers/zip archivers/unzip \
		${RUN_DEPENDS}

EXTDIR_ROOT ?=	share/freenet
REAL_EXTDIR ?=	${PREFIX}/${EXTDIR_ROOT}/plugins

SUBST_VARS +=	EXTDIR_ROOT

WRKDIST ?=	${WRKDIR}/plugin-${ADDON_NAME}-${GH_TAGNAME:S/v//}

# requires extra dependencies
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${REAL_EXTDIR}
	${INSTALL_DATA_DIR} ${REAL_EXTDIR}/data
	${INSTALL_DATA} ${WRKSRC}/dist/${ADDON_NAME}.jar ${REAL_EXTDIR}

.endif
