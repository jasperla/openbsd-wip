# $OpenBSD: Makefile,v 1.25 2010/06/24 07:45:06 espie Exp $

     SUBDIR =
# don't even try to keep these sorted

# basic bricks
     SUBDIR += akonadi			# issues
     SUBDIR += attica			# test
     SUBDIR += automoc			# OK
     SUBDIR += oxygen-icons		# OK

# libraries
     SUBDIR += libs			# test
     SUBDIR += pimlibs			# test
     SUBDIR += qimageblitz		# test

# extra base
     SUBDIR += runtime			# test
     SUBDIR += pim-runtime		# test
     SUBDIR += workspace		# test
     SUBDIR += baseapps			# test
     
# bindings and wrappers
#     SUBDIR += kimono
#     SUBDIR += korundum
#     SUBDIR += kross-interpreters
#     SUBDIR += perlkde
#     SUBDIR += perlqt
#     SUBDIR += pykde4
#     SUBDIR += qtruby
#     SUBDIR += qyoto
#     SUBDIR += smokegen
#     SUBDIR += smokekde
#     SUBDIR += smokeqt
     
# fat packages
     SUBDIR += accessibility		# test
     SUBDIR += admin			# test
     SUBDIR += games			# test
     SUBDIR += multimedia		# issues in dragon
     SUBDIR += network			# test
     SUBDIR += pim			# needs akonadi
#     SUBDIR += sdk
     SUBDIR += toys			# OK
     SUBDIR += utils			# test
#     SUBDIR += webdev

# former kdeedu
     SUBDIR += blinken			# issues
     SUBDIR += cantor			# OK
     SUBDIR += kalgebra			# OK
     SUBDIR += kalzium			# minor issues
     SUBDIR += kanagram			# OK
     SUBDIR += kbruch			# OK
#     SUBDIR += kgeography
#     SUBDIR += khangman
#     SUBDIR += kig
#     SUBDIR += kiten
#     SUBDIR += klettres
#     SUBDIR += kmplot
#     SUBDIR += kstars
#     SUBDIR += ktouch
#     SUBDIR += kturtle
#     SUBDIR += kwordquiz
     SUBDIR += libkdeedu		# untested
     SUBDIR += marble			# issues
#     SUBDIR += parley
#     SUBDIR += rocs
#     SUBDIR += step
     
# former kdegraphics
     SUBDIR += digikam			# not fully tested
     SUBDIR += graphics-strigi-analyzer	# untested
     SUBDIR += graphics-thumbnailers	# untested
     SUBDIR += gwenview			# OK
     SUBDIR += kamera			# untested
     SUBDIR += kcolorchooser		# OK
     SUBDIR += kgamma			# OK
     SUBDIR += kolourpaint		# OK
     SUBDIR += kruler			# OK
     SUBDIR += ksaneplugin		# untested
     SUBDIR += ksnapshot		# OK
     SUBDIR += libkdcraw		# untested
     SUBDIR += libkexiv2		# untested
     SUBDIR += libkipi			# OK
     SUBDIR += libksane			# untested
#     SUBDIR += mobipocket
     SUBDIR += okular			# only PDF tested
     SUBDIR += svgpart			# OK
     
# other apps
     SUBDIR += kate			# OK
     SUBDIR += konsole			# issues
     SUBDIR += akonadi-googledata	# untested
     
# additional resources
     SUBDIR += plasma-addons		# not fully tested
     SUBDIR += l10n			# OK
     SUBDIR += wallpapers		# OK

.include <bsd.port.subdir.mk>
