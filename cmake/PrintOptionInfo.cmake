# Print CMake options
message(STATUS "| BUILD INFO")
message(STATUS "|-----------------------------")
message(STATUS "| CMAKE_BUILD_TYPE       : ${CMAKE_BUILD_TYPE}")
message(DEBUG  "| CMAKE_PREFIX_PATH      : ${CMAKE_PREFIX_PATH}")
message(DEBUG  "| CMAKE_INSTALL_PREFIX   : ${CMAKE_INSTALL_PREFIX}")
message(DEBUG  "| CMAKE_VERBOSE_MAKEFILE : ${CMAKE_VERBOSE_MAKEFILE}")
message(DEBUG  "| BUILD_SHARED_LIBS      : ${BUILD_SHARED_LIBS}")
message(STATUS "| H5DU_PACKAGE_MANAGER   : ${H5DU_PACKAGE_MANAGER}")
message(DEBUG  "| H5DU_DEPS_BUILD_DIR    : ${H5DU_DEPS_BUILD_DIR}")
message(DEBUG  "| H5DU_DEPS_INSTALL_DIR  : ${H5DU_DEPS_INSTALL_DIR}")
message(STATUS "| H5DU_ENABLE_THREADS    : ${H5DU_ENABLE_THREADS}")
message(STATUS "| H5DU_ENABLE_MKL        : ${H5DU_ENABLE_MKL}")
message(STATUS "| H5DU_ENABLE_ASAN       : ${H5DU_ENABLE_ASAN}")
message(STATUS "| H5DU_ENABLE_USAN       : ${H5DU_ENABLE_USAN}")
message(STATUS "| H5DU_ENABLE_LTO        : ${H5DU_ENABLE_LTO}")
message(STATUS "| H5DU_ENABLE_PCH        : ${H5DU_ENABLE_PCH}")
message(STATUS "| H5DU_ENABLE_CCACHE     : ${H5DU_ENABLE_CCACHE}")
message(STATUS "| H5DU_ENABLE_TESTS      : ${H5DU_ENABLE_TESTS}")
message(STATUS "| H5DU_BUILD_EXAMPLES    : ${H5DU_BUILD_EXAMPLES}")
message(DEBUG  "| H5DU_DEPS_IN_SUBDIR    : ${H5DU_DEPS_IN_SUBDIR}")
message(STATUS "|-----------------------------")

