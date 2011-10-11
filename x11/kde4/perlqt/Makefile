# $OpenBSD$

COMMENT =	Qt 4 bindings for Perl
DISTNAME =	perlqt-${VERSION}

LIB_DEPENDS = 	x11/kde4/smokeqt

WANTLIB += c m perl pthread stdc++ util
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += smokebase smokephonon smokeqimageblitz smokeqsci
WANTLIB += smokeqt3support smokeqtcore smokeqtdbus smokeqtdeclarative
WANTLIB += smokeqtgui smokeqthelp smokeqtmultimedia smokeqtnetwork
WANTLIB += smokeqtopengl smokeqtscript smokeqtsql smokeqtsvg smokeqttest
WANTLIB += smokeqtuitools smokeqtwebkit smokeqtxml smokeqtxmlpatterns
WANTLIB += smokeqwt

# Avoid clashing Perl do_open and do_close with GCC's locale_facets.h
post-patch:
	@echo "====>  Removing extra Perl defines from:" >&2
	@cd ${WRKSRC} && find . -name '*.cpp' | sort | while read F; do \
		awk -f ${FILESDIR}/undefperl.awk <"$$F" >"$$F".undef || exit 1; \
		if cmp -s "$$F" "$$F".undef; then \
			rm "$$F".undef; \
		else \
			echo "\\t$${F#./}" >&2; \
			cp "$$F" "$$F".beforeundef && mv "$$F".undef "$$F"; \
		fi \
	done

.include <bsd.port.mk>
