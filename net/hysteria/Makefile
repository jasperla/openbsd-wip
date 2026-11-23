COMMENT =		powerful, censorship-resistant proxy protocol

VERSION =		2.13.0
DISTNAME =		hysteria-${VERSION}
CATEGORIES =		net

HOMEPAGE =		v2.hysteria.network

MAINTAINER =		Mikhaylov Aleksandr <alex@alexmihajlov.ru>

# MIT Licance
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/apernet/hysteria/archive/refs/tags/
DISTFILES =		app/v${VERSION}.tar.gz

EXTRACT_SUFX =		.tar.gz
WRKSRC =		${WRKDIR}/hysteria-app-v${VERSION}

BUILD_DEPENDS =		lang/go

do-build:
	cd ${WRKSRC} && \
		go build -trimpath -ldflags="-s -w" -o hysteria ./app

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hysteria ${PREFIX}/bin/

.include <bsd.port.mk>
