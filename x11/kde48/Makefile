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
	workspace, baseapps and then the rest of KDE

# basic bricks
     SUBDIR += akonadi			
     SUBDIR += attica			
     SUBDIR += automoc			
     SUBDIR += oxygen-icons		

# libraries
     SUBDIR += libs			
     SUBDIR += pimlibs			
     SUBDIR += qimageblitz		

# extra base
     SUBDIR += kactivities		
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
     SUBDIR += qyoto			
     SUBDIR += kimono			
     SUBDIR += smokegen
     SUBDIR += smokekde			
     SUBDIR += smokeqt			

# former accessibility, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += jovie
     SUBDIR += kaccessible		
     SUBDIR += kmousetool		
     SUBDIR += kmag			
     SUBDIR += kmouth			

# fat packages
     SUBDIR += admin			
     SUBDIR += games			
     SUBDIR += multimedia		
     SUBDIR += network			
     SUBDIR += pim			
     SUBDIR += sdk			
     SUBDIR += toys			
     SUBDIR += webdev			

# former kdeutils, changed in KDE 4.8 beta/rc, all untested
     SUBDIR += ark
     SUBDIR += kdf
     SUBDIR += filelight
     SUBDIR += kgpg
     SUBDIR += kwallet
     SUBDIR += sweeper
     SUBDIR += printer-applet
     SUBDIR += kremotecontrol
     SUBDIR += kfloppy
     SUBDIR += kcalc
     SUBDIR += kcharselect
     SUBDIR += ktimer
     SUBDIR += superkaramba

# former kdeedu
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
     SUBDIR += libkdeedu		
     SUBDIR += marble			
     SUBDIR += parley			
     SUBDIR += rocs			# marked BROKEN, needs boost >1.43
     SUBDIR += step			

# former kdegraphics
     SUBDIR += digikam			
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
     SUBDIR += libkdcraw		
     SUBDIR += libkexiv2		
     SUBDIR += libkipi			
     SUBDIR += libksane			
     SUBDIR += mobipocket		
     SUBDIR += okular
     SUBDIR += svgpart			

# other apps
     SUBDIR += kate			
     SUBDIR += konsole			
     SUBDIR += akonadi-googledata	
     SUBDIR += kdevplatform		
     SUBDIR += kdevelop
     SUBDIR += yakuake			
     SUBDIR += kwebkitpart		
#     SUBDIR += calligra		# marked BROKEN to fix compile issues...	
     SUBDIR += libktorrent		
     SUBDIR += ktorrent			

# additional resources
     SUBDIR += plasma-addons
     SUBDIR += l10n			
     SUBDIR += wallpapers		

.include <bsd.port.subdir.mk>
