include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
  PACKAGE_NAME
  check
  VERSION
  "0.13.0"
  URL
  "https://github.com/libcheck/check/releases/download/0.13.0/check-0.13.0.tar.gz"
  SHA1
  03d540c4c2a0e245f2eae5757711a4bd7409866b
  )

hunter_cmake_args(
  check
  CMAKE_ARGS
  BUILD_TESTING=OFF
  CHECK_ENABLE_GCOV=OFF
  ENABLE_MEMORY_LEAKING_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(check)
hunter_download(PACKAGE_NAME check)

