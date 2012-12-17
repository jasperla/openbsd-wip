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
# Eventually this stuff will be partly moved to corresponding directories,
# leaving only "basic" KDE packages here (those who get in actual
# releases of KDE SC).

# Build dependency tree of main building blocks:
# OUTSIDE: akonadi, attica, automoc, cagibi, qimageblitz
# HERE: oxygen-icons
# |
#  - libs
#   |   -kactivities -> nepomuk-core -> pimlibs -> runtime
#   |
#   |- artwork, base-artwork, l10n, wallpapers
#   |- runtime
#   |- baseapps
#   |- pimlibs
#   | |
#   | |- libkgapi
#   | |- pim-runtime
#   |  - pim
#   |-
#   |  |
#   |   -kactivities
#   |    |
#   |    |- py-kde
#   |      |
#   |      |- workspace
#   |
#   |- smokegen
#   | |
#   | |- smokeqt
#   | | |
#   | | |- p5-qt, qyoto,  ruby-qt
#     -- kate/okular		|
#      |			|
#   |  --- smokekde             |
#   |     |                     |
#   |      - p5-kde, kimono, korundum
#
#   | -- kwebkitpart, libktorrent
#      |
#       -- network
#   | -- former accessibility
#   | -- former kdeedu
#   | -- former kdeutils
#   | -- former kdegraphics
#   | -- former kdemultimedia

# basic bricks
     SUBDIR += oxygen-icons		# OK

# libraries
     SUBDIR += libs			# OK
     SUBDIR += pimlibs			# OK

# extra base
     SUBDIR += kactivities		# untested
     SUBDIR += nepomuk-core		# untested
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

# former accessibility
     SUBDIR += jovie			# issues
     SUBDIR += kaccessible		# untested
     SUBDIR += kmousetool		# OK
     SUBDIR += kmag			# OK
     SUBDIR += kmouth			# untested

# fat packages
     SUBDIR += admin			# test
     SUBDIR += network			# test
     SUBDIR += pim			# OK
     SUBDIR += sdk			# test
     SUBDIR += toys			# test KTeaTime
     SUBDIR += webdev			# minor issues

# former kdeutils
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
     SUBDIR += print-manager
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
     SUBDIR += pairs			# untested
     SUBDIR += parley			# OK
     SUBDIR += rocs			# minor issues
     SUBDIR += step			# OK

# former kdegames
     SUBDIR += bomber
     SUBDIR += bovo
     SUBDIR += granatier
     SUBDIR += kajongg
     SUBDIR += kapman
     SUBDIR += katomic
     SUBDIR += kblackbox
     SUBDIR += kblocks
     SUBDIR += kbounce
     SUBDIR += kbreakout
     SUBDIR += kdiamond
     SUBDIR += kfourinline
     SUBDIR += kgoldrunner
     SUBDIR += kigo
     SUBDIR += killbots
     SUBDIR += kiriki
     SUBDIR += kjumpingcube
     SUBDIR += klickety
     SUBDIR += klines
     SUBDIR += kmahjongg
     SUBDIR += kmines
     SUBDIR += knavalbattle
     SUBDIR += knetwalk
     SUBDIR += kolf
     SUBDIR += kollision
     SUBDIR += konquest
     SUBDIR += kpat
     SUBDIR += kreversi
     SUBDIR += kshisen
     SUBDIR += ksirk
     SUBDIR += ksnakeduel
     SUBDIR += kspaceduel
     SUBDIR += ksquares
     SUBDIR += ksudoku
     SUBDIR += ktuberling
     SUBDIR += kubrick
     SUBDIR += libkdegames
     SUBDIR += libkmahjongg
     SUBDIR += lskat
     SUBDIR += palapeli
     SUBDIR += picmi

# former kdegraphics
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
     SUBDIR += okular			# test
     SUBDIR += svgpart			# OK

# former kdemultimedia
     SUBDIR += audiocd-kio		# untested
     SUBDIR += dragon			# minor issues
     SUBDIR += ffmpegthumbs		# test
     SUBDIR += juk			# OK
     SUBDIR += kmix			# broken
     SUBDIR += kscd			# untested
     SUBDIR += libkcddb			# untested
     SUBDIR += libkcompactdisc		# untested
     SUBDIR += mplayerthumbs		# test

# other apps
     SUBDIR += kate			# OK
     SUBDIR += konsole			# OK

# additional resources
     SUBDIR += artwork			# OK
     SUBDIR += base-artwork		# OK
     SUBDIR += nepomuk-widgets
     SUBDIR += plasma-addons		# untested
     SUBDIR += l10n			# OK
     SUBDIR += wallpapers		# OK

.include <bsd.port.subdir.mk>
