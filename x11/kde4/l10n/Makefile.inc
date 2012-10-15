# $OpenBSD$

IGNORE_SILENT =		Yes
COMMENT =		K Desktop Environment, language localization pack
DISTNAME =		kde-l10n-${KDE_L10N_LANG}-${MODKDE_VERSION}

MODKDE4_RESOURCES =	Yes
MODKDE4_USE =		libs

.include "${.CURDIR}/../Makefile.langs"

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
		LDFLAGS="-L${PREFIX}/lib -liconv -lintl"

# XXX have to do this manually here...
.include "${.CURDIR}/../../Makefile.inc"
