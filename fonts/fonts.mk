# $OpenBSD$

CATEGORIES +=	fonts

PKG_ARCH ?=	*

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

.if defined(TYPEFACE)
FONTDIR ?=	${PREFIX}/share/fonts/${TYPEFACE}

FONTTYPES ?=	ttf

.  if !target(do-install):
do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
.    for t ${FONTTYPES}
	${INSTALL_DATA} ${WRKSRC}/*.$t ${FONTDIR}
.    endfor
.  endif
.endif
