# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/zathura/plugins/download/

V ?=	0.2.0

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_CDROM ?=Yes
PERMIT_DISTFILES_FTP ?=	Yes

RUN_DEPENDS ?=	textproc/zathura-core>=0.2.0
LIB_DEPENDS ?=	x11/girara
BUILD_DEPENDS ?=${RUN_DEPENDS} # just to satisfy dep checks

MAKE_FLAGS ?=	VERBOSE=1

NO_REGRESS ?=	Yes
USE_GMAKE ?=	Yes
