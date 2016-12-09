# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

SUBDIR =
SUBDIR += extra-cmake-modules # 100% tests passed, 0 tests failed out of 48

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n			# 100% tests passed, 0 tests failed out of 4
SUBDIR += attica		# 100% tests passed, 0 tests failed out of 1
SUBDIR += bluez-qt 		# 100% tests passed, 0 tests failed out of 9
SUBDIR += breeze-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += kapidox		# No tests were found!!!
SUBDIR += karchive		# 100% tests passed, 0 tests failed out of 5
SUBDIR += kcodecs		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kconfig		# 100% tests passed, 0 tests failed out of 35
SUBDIR += kcoreaddons		# 100% tests passed, 0 tests failed out of 23
SUBDIR += kdbusaddons		# tests stuck anyway
SUBDIR += kdnssd		# No tests were found!!!
SUBDIR += kguiaddons		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kidletime		# No tests were found!!! CHECK plist
SUBDIR += kitemmodels		# 100% tests passed, 0 tests failed out of 11
SUBDIR += kitemviews		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kplotting		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kwidgetsaddons	# 100% tests passed, 0 tests failed out of 12
SUBDIR += kwindowsystem		# 58% tests passed, 5 tests failed out of 12
SUBDIR += oxygen-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += solid 		# 75% tests passed, 1 tests failed out of 4
SUBDIR += sonnet 		# 100% tests passed, 0 tests failed out of 4
SUBDIR += threadweaver		# 100% tests passed, 0 tests failed out of 7
#SUBDIR += syntax-highlighting requested Qt version "5.6.0".

# tier 2
SUBDIR += kauth			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kcompletion		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kcrash		# 50% tests passed, 1 tests failed out of 2
SUBDIR += kdoctools		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kfilemetadata		# 82% tests passed, 2 tests failed out of 11
SUBDIR += kimageformats		# 100% tests passed, 0 tests failed out of 13
SUBDIR += kjobwidgets		# 
SUBDIR += knotifications	# 0% tests passed, 1 tests failed out of 1
SUBDIR += kpty			# 
SUBDIR += kunitconversion	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kpackage		# 86% tests passed, 1 tests failed out of 7

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice		# 70% tests passed, 3 tests failed out of 10
SUBDIR += kconfigwidgets	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kiconthemes		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kpeople		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kwallet		# No tests were found!!!
SUBDIR += kemoticons		# 0% tests passed, 2 tests failed out of 2
SUBDIR += kglobalaccel		# 100% tests passed, 0 tests failed out of 1
SUBDIR += ktextwidgets		# 100% tests passed, 0 tests failed out of 5
SUBDIR += kxmlgui		# 80% tests passed, 1 tests failed out of 5
SUBDIR += kbookmarks		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kdesu			# No tests were found!!!
SUBDIR += kio			# 84% tests passed, 8 tests failed out of 51
SUBDIR += knewstuff		# 67% tests passed, 1 tests failed out of 3
SUBDIR += kactivities		# No tests were found!!!
SUBDIR += kinit			# No tests were found!!!
SUBDIR += kactivities-stats	# No tests were found!!!
SUBDIR += kparts		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kded			# No tests were found!!!
SUBDIR += kxmlrpcclient		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kdeclarative		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kcmutils		# No tests were found!!!
SUBDIR += kdewebkit		# No tests were found!!!
SUBDIR += baloo			# 84% tests passed, 3 tests failed out of 19
SUBDIR += kdesignerplugin	# 100% tests passed, 0 tests failed out of 2
SUBDIR += knotifyconfig		# No tests were found!!!
SUBDIR += ktexteditor		# 98% tests passed, 1 tests failed out of 65
SUBDIR += plasma-framework	# 53% tests passed, 7 tests failed out of 15

# tier 4
SUBDIR += frameworkintegration	# 100% tests passed, 0 tests failed out of 1

# porting aids
SUBDIR += kdelibs4support	# 92% tests passed, 3 tests failed out of 39
SUBDIR += khtml			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kjs			# 100% tests passed, 0 tests failed out of 1
SUBDIR += kjsembed		# No tests were found!!!
SUBDIR += kmediaplayer		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kross			# 100% tests passed, 0 tests failed out of 1
SUBDIR += krunner		# 100% tests passed, 0 tests failed out of 1

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
