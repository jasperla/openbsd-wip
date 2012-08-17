####### checks for kdecore/util  ###############
include(CheckFunctionExists)

check_function_exists(lockf            HAVE_LOCKF)
check_function_exists(flock            HAVE_FLOCK)
