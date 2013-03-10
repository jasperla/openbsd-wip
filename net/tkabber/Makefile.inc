# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

CATEGORIES =		net/tkabber x11

HOMEPAGE =		http://tkabber.jabber.ru/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

VERSION = 		0.11.1

MASTER_SITES =		http://files.jabber.ru/tkabber/

MODULES =		x11/tk

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*
