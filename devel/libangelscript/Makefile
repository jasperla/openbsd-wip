# $OpenBSD$

COMMENT =               cross-platform scripting library

V =                     2.30.2
PKGNAME =               angelscript-${V}
DISTNAME =              angelscript_${V}
EXTRACT_SUFX=           .zip

CATEGORIES =            devel
HOMEPAGE =              http://www.angelcode.com/angelscript

MAINTAINER =            David Carlier <devnexen@gmail.com>

# ZLIB
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =          ${HOMEPAGE}/sdk/files/

USE_GMAKE =             Yes
WANTLIB +=              c stdc++

WRKDIST =               ${WRKDIR}/sdk
WRKSRC =                ${WRKDIR}/sdk/angelscript/projects/gnuc

.include <bsd.port.mk>
