# $OpenBSD: Makefile,v 1.3 2016/12/28 08:09:00 zhuk Exp $

SUBDIR =
SUBDIR += extra-cmake-modules # not tested

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n			# not tested
SUBDIR += attica		# not tested
SUBDIR += bluez-qt 		# not tested
SUBDIR += breeze-icons		# not tested
SUBDIR += kapidox		# NO_TEST
SUBDIR += karchive		# not tested
SUBDIR += kcodecs		# not tested
SUBDIR += kconfig		# not tested
SUBDIR += kcoreaddons		# not tested
SUBDIR += kdbusaddons		# not tested, requires CMake hackery in e-c-m
SUBDIR += kdnssd		# NO_TEST
# zhuk@ stopped here
SUBDIR += kguiaddons		# not tested
SUBDIR += kidletime		# NO_TEST
SUBDIR += kitemmodels		# not tested
SUBDIR += kitemviews		# not tested
SUBDIR += kplotting		# not tested
SUBDIR += kwidgetsaddons	# not tested
SUBDIR += kwindowsystem		# not tested
SUBDIR += oxygen-icons		# not tested
SUBDIR += solid 		# not tested
SUBDIR += sonnet 		# not tested
SUBDIR += threadweaver		# not tested
SUBDIR += syntax-highlighting	# not tested
SUBDIR += prison		# NO_TEST

# tier 2
SUBDIR += kauth			# not tested
SUBDIR += kcompletion		# not tested
SUBDIR += kcrash		# not tested
SUBDIR += kdoctools		# not tested
SUBDIR += kfilemetadata		# not tested
SUBDIR += kimageformats		# not tested
SUBDIR += kjobwidgets		# NO_TEST
SUBDIR += knotifications	# not tested
SUBDIR += kpty			# not tested
SUBDIR += kunitconversion	# not tested
SUBDIR += kpackage		# not tested

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice		# not tested
SUBDIR += kconfigwidgets	# not tested
SUBDIR += kiconthemes		# not tested
SUBDIR += kpeople		# not tested
SUBDIR += kwallet		# not tested
SUBDIR += kemoticons		# not tested
SUBDIR += kglobalaccel		# not tested
SUBDIR += ktextwidgets		# not tested
SUBDIR += kxmlgui		# not tested
SUBDIR += kbookmarks		# not tested
SUBDIR += kdesu			# NO_TEST
SUBDIR += kio			# not tested
SUBDIR += knewstuff		# not tested
SUBDIR += kactivities		# NO_TEST
SUBDIR += kinit			# NO_TEST
SUBDIR += kactivities-stats	# NO_TEST
SUBDIR += kparts		# not tested
SUBDIR += kded			# NO_TEST
SUBDIR += kxmlrpcclient		# not tested
SUBDIR += kdeclarative		# not tested
SUBDIR += kcmutils		# NO_TEST
SUBDIR += kdewebkit		# NO_TEST
SUBDIR += baloo			# 18 schedulertest stuck in, filewatchtest fails, rest okay
SUBDIR += kdesignerplugin	# not tested
SUBDIR += knotifyconfig		# NO_TEST
SUBDIR += ktexteditor		# not tested
SUBDIR += plasma-framework	# not tested

# tier 4
SUBDIR += frameworkintegration	# not tested

# porting aids
SUBDIR += kdelibs4support	# not tested
SUBDIR += khtml			# not tested
SUBDIR += kjs			# not tested
SUBDIR += kjsembed		# NO_TEST
SUBDIR += kmediaplayer		# not tested
SUBDIR += kross			# not tested
SUBDIR += krunner		# not tested

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
