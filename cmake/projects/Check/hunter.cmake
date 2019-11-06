include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
  PACKAGE_NAME
  Check
  VERSION
  "0.12.0"
  URL
  "https://github.com/libcheck/check/releases/download/0.12.0/check-0.12.0.tar.gz"
  SHA1
  f6d95392b8c6b9efdab559e6dba239b30a389b56
  )

hunter_cmake_args(
  Check
  CMAKE_ARGS
  BUILD_TESTING=OFF
  CHECK_ENABLE_GCOV=OFF
  ENABLE_MEMORY_LEAKING_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Check)
hunter_download(PACKAGE_NAME Check)

