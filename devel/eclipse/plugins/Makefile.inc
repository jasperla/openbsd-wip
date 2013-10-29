# $OpenBSD: Makefile.inc,v 1.5 2013/02/07 20:21:03 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

CATEGORIES+=	devel/eclipse/plugins

EXTRACT_SUFX?=	.zip

NO_BUILD?=	Yes
NO_TEST?=	Yes

RUN_DEPENDS?=	devel/eclipse/sdk>=4.2.2

WRKDIST?=	${WRKDIR}
