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
# Lack of mark means "port is on its way to import, please wait".
#
# Architecture at end denotes that configure, fake, plist, 
# port-lib-depends-check and lib-depends-check ALL work on this arch.
#
# Eventually this stuff will be partly moved to corresponding directories,
# leaving only "basic" KDE packages here (those who get in actual
# releases of KDE SC).

# sequence for building is libs, runtime, pimlibs, pim, pim-runtime,
#	workspace, baseapps and then the rest of KDE

# basic bricks
     SUBDIR += akonadi			# untested
     SUBDIR += attica			# OK
     SUBDIR += automoc			# OK
     SUBDIR += oxygen-icons		# OK

# libraries
     SUBDIR += libs			# test
     SUBDIR += pimlibs			# untested
     SUBDIR += qimageblitz		# test

# extra base
     SUBDIR += kactivities		# untested
     SUBDIR += runtime			# test
     SUBDIR += pim-runtime		# untested
     SUBDIR += workspace		# test
     SUBDIR += baseapps			# OK

# bindings and wrappers
     SUBDIR += kross-interpreters	# untested
     SUBDIR += p5-kde			# untested
     SUBDIR += p5-qt			# untested
     SUBDIR += py-kde			# untested
     SUBDIR += ruby-qt			# untested
     SUBDIR += korundum			# untested
     SUBDIR += qyoto			# untested
     SUBDIR += kimono			# untested
     SUBDIR += smokegen			# test
     SUBDIR += smokekde			# untested
     SUBDIR += smokeqt			# untested

# former accessibility, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += jovie			# untested
     SUBDIR += kaccessible		# untested
     SUBDIR += kmousetool		# untested
     SUBDIR += kmag			# OK
     SUBDIR += kmouth			# untested

# fat packages
     SUBDIR += admin			# test
     SUBDIR += games			# minor issues
     SUBDIR += multimedia		# OK, but Kscd needs testing
     SUBDIR += network			# test
     SUBDIR += pim			# test
     SUBDIR += sdk			# test
     SUBDIR += toys			# untested
     SUBDIR += webdev			# untested

# former kdeutils, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += ark			# issues
     SUBDIR += filelight		# OK
     SUBDIR += kcalc			# OK
     SUBDIR += kcharselect		# OK
     SUBDIR += kdf			# test
     SUBDIR += kfloppy			# test
     SUBDIR += kgpg			# OK
     SUBDIR += kremotecontrol		# untested
     SUBDIR += ktimer			# untested
     SUBDIR += kwallet			# OK
     SUBDIR += printer-applet		# untested
     SUBDIR += superkaramba		# untested
     SUBDIR += sweeper			# untested

# former kdeedu
     SUBDIR += blinken			# OK
     SUBDIR += cantor			# issues
     SUBDIR += analitza			# test
     SUBDIR += kalgebra			# OK
     SUBDIR += kalzium			# untested
     SUBDIR += kanagram			# OK
     SUBDIR += kbruch			# OK
     SUBDIR += kgeography		# OK
     SUBDIR += khangman			# OK
     SUBDIR += kig			# untested
     SUBDIR += kiten			# OK
     SUBDIR += klettres			# OK
     SUBDIR += kmplot			# untested
     SUBDIR += kstars			# untested
     SUBDIR += ktouch			# untested
     SUBDIR += kturtle			# untested
     SUBDIR += kwordquiz		# untested
     SUBDIR += libkdeedu		# test
     SUBDIR += marble			# test
     SUBDIR += parley			# untested
     SUBDIR += rocs			# marked BROKEN, needs boost >1.43
     SUBDIR += step			# untested

# former kdegraphics
     SUBDIR += digikam			# test
     SUBDIR += graphics-strigi-analyzer	# untested
     SUBDIR += graphics-thumbnailers	# untested
     SUBDIR += gwenview			# untested
     SUBDIR += kamera			# test
     SUBDIR += kcolorchooser		# untested
     SUBDIR += kgamma			# OK
     SUBDIR += kolourpaint		# untested
     SUBDIR += kruler			# untested
     SUBDIR += ksaneplugin		# untested
     SUBDIR += ksnapshot		# OK
     SUBDIR += libkdcraw		# untested
     SUBDIR += libkexiv2		# test
     SUBDIR += libkipi			# test
     SUBDIR += libksane			# untested
     SUBDIR += mobipocket		# untested
     SUBDIR += okular			# test
     SUBDIR += svgpart			# untested

# other apps
     SUBDIR += kate			# test
     SUBDIR += konsole			# OK
     SUBDIR += akonadi-googledata	# test
     SUBDIR += kdevplatform		# untested
     SUBDIR += kdevelop			# untested
     SUBDIR += yakuake			# OK
     SUBDIR += kwebkitpart		# OK
     SUBDIR += calligra			# untested
     SUBDIR += libktorrent		# untested
     SUBDIR += ktorrent			# untested

# additional resources
     SUBDIR += plasma-addons		# untested
     SUBDIR += l10n			# OK
     SUBDIR += wallpapers		# OK

.include <bsd.port.subdir.mk>
