# $OpenBSD: Makefile,v 1.25 2010/06/24 07:45:06 espie Exp $

     SUBDIR =
# don't even try to keep these sorted

# Build dependency tree of main building blocks:
# OUTSIDE: akonadi, attica, automoc, cagibi, qimageblitz
# HERE:
# oxygen-icons
# |
#  -> libs
#   |-> pure resources: base-artwork, l10n, wallpapers
#   |
#   |-> baseapps
#   |   |
#   |    -> konsole
#   |
#   |-> kactivities -->-+---+
#   |-> nepomuk-core ->-+   |
#   |-> runtime <--+----+   |
#   |-> pimlibs ->-+        |
#   |   |                   |
#   |   |-> libkgapi        |
#   |   |-> pim-runtime     |
#   |   |-> pim             |
#   |   |-> py-kde          |
#   |       |-> kdegames    |
#   |       |-> workspace <-+
#   |           |-> admin
#   |           |-> artwork
#   |           |-> network
#   |
#   |-> kate ------+
#   |              |
#   |-> smokekde <-+- smokegen (no SC prerequisites)
#   |   |             |-> smokeqt
#   |   |                 |-> qyoto -----+
#   |   |                 |-> ruby-qt--+ |
#   |   |                 |-> p5-qt -+ | |
#   |   |                            | | |
#   |   |-> p5-kde <-----------------+ | |
#   |   |-> korundum <-----------------+ |
#   |   |-> kimono <---------------------+
#   |
#   |-> former accessibility
#   |-> libkdeedu
#   |   |->former kdeedu
#   |
#   |-> former kdeutils
#   |-> former kdegraphics
#   +-> former kdemultimedia

# basic bricks
SUBDIR += oxygen-icons

# libraries
SUBDIR += libs
SUBDIR += pimlibs

# extra base
SUBDIR += kactivities
SUBDIR += nepomuk-core
SUBDIR += runtime
SUBDIR += pim-runtime
SUBDIR += workspace
SUBDIR += baseapps

# bindings and wrappers
SUBDIR += kross-interpreters
SUBDIR += p5-kde
SUBDIR += p5-qt
SUBDIR += py-kde
SUBDIR += ruby-qt
SUBDIR += korundum
SUBDIR += +=
SUBDIR += +=
SUBDIR += smokegen
SUBDIR += smokekde
SUBDIR += smokeqt

# former accessibility
SUBDIR += jovie
SUBDIR += kaccessible
SUBDIR += kmousetool
SUBDIR += kmag
SUBDIR += kmouth

# fat packages
SUBDIR += admin
SUBDIR += games
SUBDIR += network
SUBDIR += pim
SUBDIR += sdk
SUBDIR += toys
SUBDIR += webdev

# former kdeutils
SUBDIR += ark
SUBDIR += filelight
SUBDIR += kcalc
SUBDIR += kcharselect
SUBDIR += kdf
SUBDIR += kfloppy
SUBDIR += kgpg
SUBDIR += kremotecontrol
SUBDIR += ktimer
SUBDIR += kwallet
SUBDIR += printer-applet
SUBDIR += superkaramba
SUBDIR += sweeper

# former kdeedu
SUBDIR += libkdeedu
SUBDIR += blinken
SUBDIR += cantor
SUBDIR += analitza
SUBDIR += kalgebra
SUBDIR += kalzium
SUBDIR += kanagram
SUBDIR += kbruch
SUBDIR += kgeography
SUBDIR += khangman
SUBDIR += kig
SUBDIR += kiten
SUBDIR += klettres
SUBDIR += kmplot
SUBDIR += kstars
SUBDIR += ktouch
SUBDIR += kturtle
SUBDIR += kwordquiz
SUBDIR += marble
SUBDIR += pairs
SUBDIR += parley
SUBDIR += rocs
SUBDIR += step

# former kdegraphics
SUBDIR += libkdcraw
SUBDIR += libkexiv2
SUBDIR += libkipi
SUBDIR += libksane
SUBDIR += graphics-strigi-analyzer
SUBDIR += graphics-thumbnailers
SUBDIR += gwenview
SUBDIR += kamera
SUBDIR += kcolorchooser
SUBDIR += kgamma
SUBDIR += kolourpaint
SUBDIR += kruler
SUBDIR += ksaneplugin
SUBDIR += ksnapshot
SUBDIR += okular
SUBDIR += svgpart

# former kdemultimedia
SUBDIR += libkcddb
SUBDIR += libkcompactdisc
SUBDIR += audiocd-kio
SUBDIR += dragon
SUBDIR += ffmpegthumbs
SUBDIR += juk
SUBDIR += kmix
SUBDIR += kscd
SUBDIR += mplayerthumbs

# other apps
SUBDIR += kate
SUBDIR += konsole

# additional resources
SUBDIR += artwork
SUBDIR += base-artwork
SUBDIR += plasma-addons
SUBDIR += l10n
SUBDIR += wallpapers

.include <bsd.port.subdir.mk>
