# Replace ??? with appropriate values
# Use /usr/ports/infrastructure/bin/portcheck

COMMENT=	line oriented chat frontend for ii
DISTNAME=	lchat-1.0

GH_ACCOUNT=	younix
GH_PROJECT=	lchat
GH_COMMIT=	b04323cbd25293b64b73cf544cb3af077e7a0050

CATEGORIES=	misc
HOMEPAGE=	https://github.com/younix/lchat
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

# If pledge is used, annotate with `uses pledge()' in a comment

WANTLIB +=	c grapheme

#MASTER_SITES =		???

LIB_DEPENDS =		textproc/libgrapheme

.include <bsd.port.mk>
