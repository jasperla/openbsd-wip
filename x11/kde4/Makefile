# $OpenBSD: Makefile,v 1.25 2010/06/24 07:45:06 espie Exp $

     SUBDIR =
# don't even try to keep these sorted

# Marks meaning:
#  OK		- can be imported right now
#  minor issues	- almost OK, some minor functionality does not work
#  issues	- have troubles with general usage flow
#  test		- looks like working but deepier tests needed
#  untested	- only compilation tested
# Other marks describe actual problems, meaning "this should be fixed".
# Lack of mark means "port is on its way to import, please wait"

# Eventually this stuff will be partly moved to corresponding directories,
# leaving only "basic" KDE packages here (those who get in actual
# releases of KDE SC).

# basic bricks
     SUBDIR += akonadi			# minor issues
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
     SUBDIR += kimono			# compilation fails, bug in mono-2.pc
     SUBDIR += korundum			# test
     SUBDIR += kross-interpreters	# test
     SUBDIR += perlkde			# test
     SUBDIR += perlqt			# test
     SUBDIR += pykde4			# no Polkit-Qt support, DLFCN trouble
     SUBDIR += qtruby			# test
     SUBDIR += qyoto			# test
     SUBDIR += smokegen			# no Akonadi
     SUBDIR += smokekde			# test
     SUBDIR += smokeqt			# test
     
# fat packages
     SUBDIR += accessibility		# test
     SUBDIR += admin			# test
     SUBDIR += games			# test
     SUBDIR += multimedia		# issues in Dragon and KMix
     SUBDIR += network			# test
     SUBDIR += pim			# needs akonadi
     SUBDIR += sdk			# OK
     SUBDIR += toys			# OK
     SUBDIR += utils			# test
     SUBDIR += webdev

# former kdeedu
     SUBDIR += blinken			# issues
     SUBDIR += cantor			# OK
     SUBDIR += kalgebra			# OK
     SUBDIR += kalzium			# minor issues
     SUBDIR += kanagram			# OK
     SUBDIR += kbruch			# OK
     SUBDIR += kgeography		# OK
     SUBDIR += khangman			# OK
     SUBDIR += kig			# OK
     SUBDIR += kiten			# OK
     SUBDIR += klettres			# test
     SUBDIR += kmplot			# OK
     SUBDIR += kstars			# minor issues
     SUBDIR += ktouch			# issues
     SUBDIR += kturtle			# OK
     SUBDIR += kwordquiz		# OK
     SUBDIR += libkdeedu		# untested
     SUBDIR += marble			# issues
     SUBDIR += parley			# minor issues
     SUBDIR += rocs			# OK
     SUBDIR += step			# OK
     
# former kdegraphics
     SUBDIR += digikam			# test
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
     SUBDIR += mobipocket		# untested
     SUBDIR += okular			# only PDF tested
     SUBDIR += svgpart			# OK
     
# other apps
     SUBDIR += kate			# OK
     SUBDIR += konsole			# issues
     SUBDIR += akonadi-googledata	# untested
     SUBDIR += kdevplatform		# untested
#     SUBDIR += kdevelop
     SUBDIR += yakuake			# minor issues
     
# additional resources
     SUBDIR += plasma-addons		# test
     SUBDIR += l10n			# OK
     SUBDIR += wallpapers		# OK

.include <bsd.port.subdir.mk>
