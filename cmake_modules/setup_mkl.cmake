set(MKL_USE_STATIC_LIBS true)
set(MKL_FIND_QUIETLY false)
set(MKL_ROOT $ENV{MKL_ROOT})

find_package(MKL)
add_library(mkl_core STATIC IMPORTED GLOBAL)

if(NOT MKL_FOUND)
  message(WARNING "Could not find MKL mate...")
  set(USE_MKL false)
endif()
