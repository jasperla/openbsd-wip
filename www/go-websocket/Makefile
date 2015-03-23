# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

ONLY_FOR_ARCHS =	$(GO_ARCHS)

COMMENT =		golang websocket package

VERSION =		0.0
DISTNAME =		go-websocket-${VERSION}
GH_COMMIT =		97d8e4e174133a4d1d2171380e510eb4dea8f5ea
GH_ACCOUNT =		golang
GH_PROJECT =		net

CATEGORIES =		www

HOMEPAGE =		http://golang.org/x/net/websocket/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		lang/go

GOPATH =		"$(WRKSRC):$(LOCALBASE)/go"

post-extract:
	mkdir -p $(WRKSRC)/src/golang.org/x/net
	mv $(WRKSRC)/websocket $(WRKSRC)/src/golang.org/x/net/

do-build:
	GOPATH=$(GOPATH) go install golang.org/x/net/websocket

do-test:
	GOPATH=$(GOPATH) go test golang.org/x/net/websocket

do-install:
	$(INSTALL_DATA_DIR) $(PREFIX)/go/pkg/openbsd_amd64/golang.org/x/net
	$(INSTALL_DATA) -p						\
	    $(WRKDIST)/pkg/openbsd_amd64/golang.org/x/net/websocket.a	\
	    $(PREFIX)/go/pkg/openbsd_amd64/golang.org/x/net/
	$(INSTALL_DATA_DIR) $(PREFIX)/go/src/golang.org/x/net/websocket
	$(INSTALL_DATA) -p						\
	    $(WRKDIST)/src/golang.org/x/net/websocket/websocket.go	\
	    $(PREFIX)/go/src/golang.org/x/net/websocket/

.include <bsd.port.mk>
