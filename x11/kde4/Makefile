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

# Build dependency tree of main building blocks:
# akonadi, attica, automoc, oxygen-icons, qimageblitz
# |
#  - libs
#   |
#   |- l10n, wallpapers
#   |- runtime
#   |- baseapps
#   |- pimlibs
#   | |
#   | |- pim-runtime
#   |  - pim
#   |   |
#   |----- workspace
#   |
#   |- smokegen
#   | |
#   | |- smokeqt
#   | | |
#   | | |- p5-qt, qyoto, ruby-qt
#   |  --- smokekde             |
#   |     |                     |
#   |      - p5-kde, kimono, korundum
#   ...

# basic bricks
     SUBDIR += akonadi			# minor issues
     SUBDIR += attica			# OK
     SUBDIR += automoc			# OK
     SUBDIR += oxygen-icons		# OK

# libraries
     SUBDIR += libs			# OK
     SUBDIR += pimlibs			# OK
     SUBDIR += qimageblitz		# OK

# extra base
     SUBDIR += kactivities		# untested
     SUBDIR += runtime			# test
     SUBDIR += pim-runtime		# OK
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
     SUBDIR += smokegen			# OK
     SUBDIR += smokekde			# untested
     SUBDIR += smokeqt			# untested

# former accessibility, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += jovie			# issues
     SUBDIR += kaccessible		# untested
     SUBDIR += kmousetool		# OK
     SUBDIR += kmag			# OK
     SUBDIR += kmouth			# untested

# fat packages
     SUBDIR += admin			# test
     SUBDIR += games			# minor issues
     SUBDIR += multimedia		# OK, but Kscd needs testing
     SUBDIR += network			# test
     SUBDIR += pim			# OK
     SUBDIR += sdk			# test
     SUBDIR += toys			# test KTeaTime
     SUBDIR += webdev			# minor issues

# former kdeutils, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += ark			# OK
     SUBDIR += filelight		# OK
     SUBDIR += kcalc			# OK
     SUBDIR += kcharselect		# OK
     SUBDIR += kdf			# test
     SUBDIR += kfloppy			# test
     SUBDIR += kgpg			# OK
     SUBDIR += kremotecontrol		# untested
     SUBDIR += ktimer			# OK
     SUBDIR += kwallet			# OK
     SUBDIR += printer-applet		# issues
     SUBDIR += superkaramba		# test
     SUBDIR += sweeper			# OK

# former kdeedu
     SUBDIR += blinken			# OK
     SUBDIR += cantor			# issues
     SUBDIR += analitza			# test
     SUBDIR += kalgebra			# OK
     SUBDIR += kalzium			# OK
     SUBDIR += kanagram			# OK
     SUBDIR += kbruch			# OK
     SUBDIR += kgeography		# OK
     SUBDIR += khangman			# OK
     SUBDIR += kig			# OK
     SUBDIR += kiten			# OK
     SUBDIR += klettres			# OK
     SUBDIR += kmplot			# OK
     SUBDIR += kstars			# OK
     SUBDIR += ktouch			# OK
     SUBDIR += kturtle			# OK
     SUBDIR += kwordquiz		# OK
     SUBDIR += libkdeedu		# OK
     SUBDIR += marble			# test
     SUBDIR += parley			# OK
     SUBDIR += rocs			# minor issues
     SUBDIR += step			# OK

# former kdegraphics
     SUBDIR += digikam			# test
     SUBDIR += graphics-strigi-analyzer	# untested
     SUBDIR += graphics-thumbnailers	# untested
     SUBDIR += gwenview			# OK
     SUBDIR += kamera			# test
     SUBDIR += kcolorchooser		# OK
     SUBDIR += kgamma			# OK
     SUBDIR += kolourpaint		# OK
     SUBDIR += kruler			# OK
     SUBDIR += ksaneplugin		# untested
     SUBDIR += ksnapshot		# OK
     SUBDIR += libkdcraw		# untested
     SUBDIR += libkexiv2		# test
     SUBDIR += libkipi			# OK
     SUBDIR += libksane			# untested
     SUBDIR += mobipocket		# untested
     SUBDIR += okular			# test
     SUBDIR += svgpart			# OK

# other apps
     SUBDIR += kate			# OK
     SUBDIR += konsole			# OK
     SUBDIR += akonadi-googledata	# test
     SUBDIR += kdevplatform		# untested
     SUBDIR += kdevelop			# untested
     SUBDIR += yakuake			# OK
     SUBDIR += kwebkitpart		# OK
     SUBDIR += calligra			# untested
     SUBDIR += libktorrent		# test
     SUBDIR += ktorrent			# test

# additional resources
     SUBDIR += plasma-addons		# untested
     SUBDIR += l10n			# OK
     SUBDIR += wallpapers		# OK

.include <bsd.port.subdir.mk>
