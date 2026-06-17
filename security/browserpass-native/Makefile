COMMENT-main =		native messaging host for the browserpass browser extension
COMMENT-chromium =	chromium browser support for browserpass-native
COMMENT-firefox =	firefox browser support for browserpass-native

MODGO_MODNAME =	github.com/browserpass/browserpass-native
MODGO_VERSION =	v0.0.0-20250425203345-8419b15841c9

APP_ID =	com.github.browserpass.native
V =		0.0.0.20250425203345

DISTNAME =	browserpass-native-${MODGO_VERSION}
PKGNAME-main =		browserpass-native-${V}
PKGNAME-chromium =	browserpass-native-chromium-${V}
PKGNAME-firefox =	browserpass-native-firefox-${V}

CATEGORIES =	security

# ISC License
PERMIT_PACKAGE =	yes

# uses pledge()
MODULES =		lang/go

WANTLIB +=	c pthread

MULTI_PACKAGES =	-main -chromium -firefox

RUN_DEPENDS-chromium =	${FULLPKGPATH-main}
WANTLIB-chromium =
LIB_DEPENDS-chromium =

RUN_DEPENDS-firefox =	${FULLPKGPATH-main}
WANTLIB-firefox =
LIB_DEPENDS-firefox =

SUBST_VARS +=	APP_ID

do-install:
	sed -i "s|%%replace%%|${TRUEPREFIX}/share/browserpass/browserpass|g" \
		${WRKSRC}/browser-files/{firefox,chromium}-host.json
	${INSTALL_DATA_DIR} ${PREFIX}/share/browserpass
	${INSTALL} ${WRKDIR}/go/bin/browserpass-native ${PREFIX}/share/browserpass/browserpass
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/browserpass
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/browserpass
	${INSTALL_DATA_DIR} ${PREFIX}/share/browserpass/hosts/chromium
	${INSTALL_DATA} ${WRKSRC}/browser-files/chromium-host.json \
		${PREFIX}/share/browserpass/hosts/chromium/${APP_ID}.json
	${INSTALL_DATA_DIR} ${PREFIX}/share/browserpass/policies/chromium
	${INSTALL_DATA} ${WRKSRC}/browser-files/chromium-policy.json \
		${PREFIX}/share/browserpass/policies/chromium/${APP_ID}.json
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mozilla/native-messaging-hosts
	${INSTALL_DATA} ${WRKSRC}/browser-files/firefox-host.json \
		${PREFIX}/lib/mozilla/native-messaging-hosts/${APP_ID}.json

.include "modules.inc"

.include <bsd.port.mk>
