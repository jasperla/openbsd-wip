# $OpenBSD: Makefile.inc,v 1.5 2013/08/07 07:47:28 kirby Exp $

ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.16

HOMEPAGE = 		http://play0ad.com/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

MASTER_SITES =		http://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =  Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
