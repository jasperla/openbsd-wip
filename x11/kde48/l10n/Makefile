# $OpenBSD$

PKGNAME =		kde-l10n-${MODKDE_VERSION}
MODKDE4_RESOURCES =	Yes
MODKDE4_USE =	libs

ALL_LANGS =	ar bg bs ca ca@valencia cs da de el en_GB es et eu fi fr ga gl
ALL_LANGS +=	he hr hu ia id is it ja kk km kn ko lt lv nb nds nl nn pa pl
ALL_LANGS +=	pt pt_BR ro ru sk sl sv th tr ug uk wa zh_CN zh_TW

# filed bug https://bugs.kde.org/show_bug.cgi?id=287865
#ALL_LANGS +=	pt pt_BR ro ru sk sl sr sv th tr ug uk wa zh_CN zh_TW

MASTER_SITES =	${MASTER_SITE_KDE:=unstable/${MODKDE_VERSION}/src/kde-l10n/}

.for _L in ${ALL_LANGS}
PSEUDO_FLAVORS +=	${_L}
.endfor
PSEUDO_FLAVORS +=	all

FLAVOR ?=	all
.if ${FLAVOR:Mall}
.	if ${FLAVOR:Nall}
ERRORS +=	Fatal: flavor 'all' is not compatible with any other
.	endif
LANGS =	${ALL_LANGS}
.else
LANGS = ${FLAVOR}
.endif

.for _L in ${LANGS}
COMMENT-${_L} =		KDE4 localization pack for ${_L} language
DISTFILES +=		kde-l10n-${_L}-${MODKDE_VERSION}${EXTRACT_SUFX}
PKGNAME-${_L} =		kde-l10n-${_L}-${MODKDE_VERSION}
MULTI_PACKAGES +=	-${_L}
.endfor

SUBPACKAGE ?=	-ru

KDE_L10N_LANG =	${SUBPACKAGE:C/^-//:C/$/ language/}
SUBST_VARS =	KDE_L10N_LANG
DESCR =		${PKGDIR}/DESCR

MODULES =	devel/gettext
NO_REGRESS =	Yes
WRKSRC =	${WRKDIR}
CONFIGURE_ENV =	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

BOOTSTRAP_CMAKE_CONF =	${WRKSRC}/CMakeLists.txt

post-extract:
	echo 'cmake_minimum_required(VERSION 2.8)' >${BOOTSTRAP_CMAKE_CONF}
	echo 'cmake_policy(SET CMP0002 OLD)' >>${BOOTSTRAP_CMAKE_CONF}
	echo 'cmake_policy(SET CMP0014 OLD)' >>${BOOTSTRAP_CMAKE_CONF}
	echo 'project(kde48-l10n)' >>${BOOTSTRAP_CMAKE_CONF}
.for _L in ${LANGS}
	echo 'message("====> building ${_L} language pack")' >>${BOOTSTRAP_CMAKE_CONF}
	echo 'add_subdirectory(kde-l10n-${_L}-${MODKDE_VERSION})' >>${BOOTSTRAP_CMAKE_CONF}
.endfor

.include <bsd.port.mk>
