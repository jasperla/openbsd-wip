# $OpenBSD: Makefile,v 1.3 2016/12/28 08:09:00 zhuk Exp $

SUBDIR =
SUBDIR += extra-cmake-modules	# 100% tests passed, 0 tests failed out of 48

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n			# 100% tests passed, 0 tests failed out of 4
SUBDIR += attica		# 100% tests passed, 0 tests failed out of 1
SUBDIR += bluez-qt 		# 100% tests passed, 0 tests failed out of 9
SUBDIR += breeze-icons		# 75% tests passed, 1 tests failed out of 4
SUBDIR += kapidox		# NO_TEST
SUBDIR += karchive		# 80% tests passed, 1 tests failed out of 5
SUBDIR += kcodecs		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kconfig		# 100% tests passed, 0 tests failed out of 35
SUBDIR += kcoreaddons		# 96% tests passed, 1 tests failed out of 23
SUBDIR += kdbusaddons		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kdnssd		# NO_TEST
SUBDIR += kguiaddons		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kidletime		# NO_TEST
SUBDIR += kitemmodels		# 100% tests passed, 0 tests failed out of 11
SUBDIR += kitemviews		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kplotting		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kwidgetsaddons	# 79% tests passed, 3 tests failed out of 14
SUBDIR += kwindowsystem		# 83% tests passed, 2 tests failed out of 12
SUBDIR += oxygen-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += solid 		# 50% tests passed, 2 tests failed out of 4
SUBDIR += sonnet 		# 100% tests passed, 0 tests failed out of 4
SUBDIR += threadweaver		# 100% tests passed, 0 tests failed out of 7
SUBDIR += syntax-highlighting	# 100% tests passed, 0 tests failed out of 8
SUBDIR += prison		# NO_TEST

# tier 2
SUBDIR += kauth			# 
SUBDIR += kcompletion		# 
SUBDIR += kcrash		# 
SUBDIR += kdoctools		# 
SUBDIR += kfilemetadata		# 
SUBDIR += kimageformats		# 
SUBDIR += kjobwidgets		# 
SUBDIR += knotifications	# 
SUBDIR += kpty			# 
SUBDIR += kunitconversion	# 
SUBDIR += kpackage		# 

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice		# 
SUBDIR += kconfigwidgets	# 
SUBDIR += kiconthemes		# 
SUBDIR += kpeople		# 
SUBDIR += kwallet		# 
SUBDIR += kemoticons		# 
SUBDIR += kglobalaccel		# 
SUBDIR += ktextwidgets		# 
SUBDIR += kxmlgui		# 
SUBDIR += kbookmarks		# 
SUBDIR += kdesu			# 
SUBDIR += kio			# 
SUBDIR += knewstuff		# 
SUBDIR += kactivities		# 
SUBDIR += kinit			# 
SUBDIR += kactivities-stats	# 
SUBDIR += kparts		# 
SUBDIR += kded			# 
SUBDIR += kxmlrpcclient		# 
SUBDIR += kdeclarative		# 
SUBDIR += kcmutils		# 
SUBDIR += kdewebkit		# 
SUBDIR += baloo			# 
SUBDIR += kdesignerplugin	# 
SUBDIR += knotifyconfig		# 
SUBDIR += ktexteditor		# 
SUBDIR += plasma-framework	# 

# tier 4
SUBDIR += frameworkintegration	# 

# porting aids
SUBDIR += kdelibs4support	# 
SUBDIR += khtml			#
SUBDIR += kjs			# 
SUBDIR += kjsembed		# 
SUBDIR += kmediaplayer		# 
SUBDIR += kross			# 
SUBDIR += krunner		# 

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
