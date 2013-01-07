# $OpenBSD: 

     SUBDIR =
# don't even try to keep these sorted

# Marks meaning:
#  OK               - can be imported right now
#  minor issues     - almost OK, some minor functionality does not work
#  issues           - have troubles with general usage flow
#  test             - looks like working but deepier tests needed
#  untested         - only compilation tested
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
#     -- kate/okular            |
#      |                        |
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
     SUBDIR += oxygen-icons             # OK

# libraries
     SUBDIR += libs                     #
     SUBDIR += pimlibs                  #

# extra base
     SUBDIR += kactivities              #
     SUBDIR += nepomuk-core             #
     SUBDIR += runtime                  #
     SUBDIR += pim-runtime              #
     SUBDIR += workspace                #
     SUBDIR += baseapps                 #

# bindings and wrappers
     SUBDIR += kross-interpreters       #
     SUBDIR += p5-kde                   #
     SUBDIR += p5-qt                    #
     SUBDIR += py-kde                   #
     SUBDIR += ruby-qt                  #
     SUBDIR += korundum                 #
#    SUBDIR += qyoto                    # disable because mono is mark as broken
#    SUBDIR += kimono                   # disable because mono is mark as broken
     SUBDIR += smokegen                 #
     SUBDIR += smokekde                 #
     SUBDIR += smokeqt                  #

# former accessibility
     SUBDIR += jovie                    #
     SUBDIR += kaccessible              #
     SUBDIR += kmousetool               #
     SUBDIR += kmag                     #
     SUBDIR += kmouth                   #

# fat packages
     SUBDIR += admin                    #
     SUBDIR += games                    #
     SUBDIR += network                  #
     SUBDIR += pim                      #
     SUBDIR += sdk                      #
     SUBDIR += toys                     #
     SUBDIR += webdev                   #

# former kdeutils
     SUBDIR += ark                      #
     SUBDIR += filelight                #
     SUBDIR += kcalc                    #
     SUBDIR += kcharselect              #
     SUBDIR += kdf                      #
     SUBDIR += kfloppy                  #
     SUBDIR += kgpg                     #
     SUBDIR += kremotecontrol           #
     SUBDIR += ktimer                   #
     SUBDIR += kwallet                  #
     SUBDIR += printer-applet           #
     SUBDIR += superkaramba             #
     SUBDIR += sweeper                  #

# former kdeedu
     SUBDIR += blinken                  #
     SUBDIR += cantor                   #
     SUBDIR += analitza                 #
     SUBDIR += kalgebra                 #
     SUBDIR += kalzium                  #
     SUBDIR += kanagram                 #
     SUBDIR += kbruch                   #
     SUBDIR += kgeography               #
     SUBDIR += khangman                 #
     SUBDIR += kig                      #
     SUBDIR += kiten                    #
     SUBDIR += klettres                 #
     SUBDIR += kmplot                   #
     SUBDIR += kstars                   #
     SUBDIR += ktouch                   #
     SUBDIR += kturtle                  #
     SUBDIR += kwordquiz                #
     SUBDIR += libkdeedu                #
     SUBDIR += marble                   #
     SUBDIR += pairs                    #
     SUBDIR += parley                   #
     SUBDIR += rocs                     #
     SUBDIR += step                     #

# former kdegraphics
     SUBDIR += graphics-strigi-analyzer #
     SUBDIR += graphics-thumbnailers    #
     SUBDIR += gwenview                 #
     SUBDIR += kamera                   #
     SUBDIR += kcolorchooser            #
     SUBDIR += kgamma                   #
     SUBDIR += kolourpaint              #
     SUBDIR += kruler                   #
     SUBDIR += ksaneplugin              #
     SUBDIR += ksnapshot                #
     SUBDIR += libkdcraw                #
     SUBDIR += libkexiv2                #
     SUBDIR += libkipi                  #
     SUBDIR += libksane                 #
     SUBDIR += okular                   #
     SUBDIR += svgpart                  #

# former kdemultimedia
     SUBDIR += audiocd-kio              #
     SUBDIR += dragon                   #
     SUBDIR += ffmpegthumbs             #
     SUBDIR += juk                      #
     SUBDIR += kmix                     #
     SUBDIR += kscd                     #
     SUBDIR += libkcddb                 #
     SUBDIR += libkcompactdisc          #
     SUBDIR += mplayerthumbs            #

# other apps
     SUBDIR += kate                     #
     SUBDIR += konsole                  #

# additional resources
     SUBDIR += artwork                  #
     SUBDIR += base-artwork             #
     SUBDIR += plasma-addons            #
     SUBDIR += l10n                     #
     SUBDIR += wallpapers               #

.include <bsd.port.subdir.mk>
