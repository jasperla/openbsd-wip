# $OpenBSD$

V =		1911.21
COMMENT =	Microsoft programming/terminal font
PKGNAME =	cascadia-code-${V}
DISTFILES =	Cascadia-${V}.ttf{Cascadia.ttf} \
		CascadiaMono-${V}.ttf{CascadiaMono.ttf} \
		CascadiaMonoPL-${V}.ttf{CascadiaMonoPL.ttf} \
		CascadiaPL-${V}.ttf{CascadiaPL.ttf}
CATEGORIES =	fonts x11

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/microsoft/cascadia-code/releases/download/v${V}/

MODULES =	font
FONTTYPES =	ttf

PKG_ARCH =	*

NO_BUILD =	Yes

NO_TEST =	Yes

do-extract:
	@mv ${DISTDIR}/Cascadia-${V}.ttf ${WRKSRC}/Cascadia.ttf
	@mv ${DISTDIR}/CascadiaMono-${V}.ttf ${WRKSRC}/CascadiaMono.ttf
	@mv ${DISTDIR}/CascadiaMonoPL-${V}.ttf ${WRKSRC}/CascadiaMonoPL.ttf
	@mv ${DISTDIR}/CascadiaPL-${V}.ttf ${WRKSRC}/CascadiaPL.ttf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/Cascadia
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${PREFIX}/share/fonts/Cascadia

.include <bsd.port.mk>
