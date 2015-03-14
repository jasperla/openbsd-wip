# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		socket library that provides common communication patterns
DISTNAME =		nanomsg-0.5-beta

SHARED_LIBS +=  nanomsg                   0.0 # 2.1

CATEGORIES =		net

HOMEPAGE =		http://nanomsg.org

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT/X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

BUILD_DEPENDS =		textproc/asciidoc \
			textproc/xmlto

MASTER_SITES =		http://download.nanomsg.org/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-doc

.include <bsd.port.mk>
