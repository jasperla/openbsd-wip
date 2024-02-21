COMMENT =	companion app for the chromium browserpass extension

MODGO_MODNAME =	github.com/browserpass/browserpass-native
MODGO_VERSION =	v0.0.0-20240129215400-5580c69a7200

APP_ID =	com.github.browserpass.native

DISTNAME =	browserpass-native-${MODGO_VERSION}
PKGNAME =	browserpass-native-20240129215400

CATEGORIES =	security

# ISC License
PERMIT_PACKAGE =	yes

# uses pledge()
MODULES =		lang/go

WANTLIB +=	c pthread

SUBST_VARS +=	APP_ID

do-install:
	sed -i "s|%%replace%%|${TRUEPREFIX}/share/browserpass/browserpass|g" \
		${WRKSRC}/browser-files/{firefox,chromium}-host.json
	${INSTALL_DATA_DIR} ${PREFIX}/share/browserpass/{hosts,policies}/{chromium,firefox}
	${INSTALL} ${WRKDIR}/go/bin/browserpass-native ${PREFIX}/share/browserpass/browserpass
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/browserpass
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/browserpass
	${INSTALL_DATA} ${WRKSRC}/browser-files/chromium-host.json \
		${PREFIX}/share/browserpass/hosts/chromium/${APP_ID}.json
	${INSTALL_DATA} ${WRKSRC}/browser-files/chromium-policy.json \
		${PREFIX}/share/browserpass/policies/chromium/${APP_ID}.json
	${INSTALL_DATA} ${WRKSRC}/browser-files/firefox-host.json \
		${PREFIX}/share/browserpass/hosts/firefox/${APP_ID}.json

.include "modules.inc"

.include <bsd.port.mk>
