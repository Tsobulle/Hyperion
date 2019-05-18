# cmake config common to everything

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")


# compiler flags
if(UNIX)
  
  if(USE_LIBC++)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
  endif()
  # position independant code
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
  
  #warning flags
  if(${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
  endif()
else()
  message(FATAL_ERROR "Unknown system...")
endif()

#set(CMAKE_DEBUG_POSTFIX _d)
#if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
#  if(WIN32)
#    set(CMAKE_EXECUTABLE_SUFFIX _d.exe)
#  else()
#    set(CMAKE_EXECUTABLE_SUFFIX _d)
#  endif()
#endif()
