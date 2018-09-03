# Find libzip
#
# Find the native libzip headers and libraries.
#
#   LIBZIP_INCLUDE_DIRS   - where to find zip.h
#   LIBZIP_LIBRARIES      - List of libraries when using libzip.
#   LIBZIP_FOUND          - True if libzip found.

cmake_minimum_required (VERSION ${CMAKE_MINIMUM_REQUIRED_VERSION})

find_path(LIBZIP_INCLUDE_DIR NAMES zip.h)
mark_as_advanced(LIBZIP_INCLUDE_DIR)

find_library(LIBZIP_LIBRARY NAMES zip)
mark_as_advanced(LIBZIP_LIBRARY)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBZIP
        REQUIRED_VARS LIBZIP_LIBRARY LIBZIP_INCLUDE_DIR)

set(LIBZIP_INCLUDE_DIRS ${LIBZIP_INCLUDE_DIR})
set(LIBZIP_LIBRARIES ${LIBZIP_LIBRARY})
