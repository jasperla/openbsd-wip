# $OpenBSD$

COMMENT =		KDE4 localization pack for ${KDE_L10N_LANG} language
DISTNAME =		kde-l10n-${KDE_L10N_LANG}-${MODKDE_VERSION}

MODKDE4_RESOURCES =	Yes
MODKDE4_USE =		libs

#ALL_LANGS +=	fr ga gl he hr hu ia id is it ja kk km kn ko lt lv nb
#ALL_LANGS +=	nds nl nn pa pl pt pt_BR ro ru sk sl sr sv th tr ug
ALL_LANGS =	ar bg bs ca ca@valencia cs da de el en_GB es et eu fi
ALL_LANGS +=	fr ga gl hr hu ia is it ja kk km ko lt lv nb
ALL_LANGS +=	nds nl nn pa pl pt pt_BR ro ru sk sl sr sv th tr
ALL_LANGS +=	uk wa zh_CN zh_TW 
.for L in ${ALL_LANGS}
SUPDISTFILES +=	kde-l10n-${L}-${MODKDE_VERSION}${EXTRACT_SUFX}
.endfor

RUN_DEPENDS =	x11/gtk+2,-guic

MASTER_SITES =	${MASTER_SITE_KDE:=stable/${MODKDE_VERSION}/src/kde-l10n/}

KDE_LANG_STR =	${KDE_L10N_LANG} language
SUBST_VARS =	KDE_LANG_STR

PKGDIR =	${.CURDIR}/../pkg
DESCR =		${PKGDIR}/DESCR
PLIST =		${PKGDIR}/PLIST-${KDE_L10N_LANG}
CHECKSUM_FILE =	${.CURDIR}/../distinfo

MODULES =	devel/gettext
NO_REGRESS =	Yes
CONFIGURE_ENV =	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

# XXX have to do this manually here...
.include "${.CURDIR}/../../Makefile.inc"
