# verifies compiler
function(verify_compiler)
  if(${CMAKE_CXX_COMPILER_ID} STREQUAL GNU)
    message(OK "All good mate")
    return()
  else()
    message(FATAL_ERROR "Oops, compiler not supported")
  endif()
endfunction()

function(setup_project ProjectName Directory LibraryType Dependencies)
  _setup_project(${ProjectName} ${Directory} ${LibraryType} "${Dependencies}" false true)
endfunction()

function(_setup_project ProjectName Directory LibraryType Dependencies)
  file(GLOB_RECURSE SourceFiles ${Directory}/src/*.cpp ${Directory}/src/*.c ${Directory}/src/*.h)
  file(GLOB_RECURSE IncludeFiles ${Directory}/include/*.h)

  set(ProjectFiles ${SourceFiles} ${IncludeFiles})
  include_directories(${Directory}/src ${Directory}/include)

  setup_library(${ProjectName} ${LibraryType} "${ProjectFiles}" "${Dependencies}" ${ProjectName})
endfunction()

function(setup_library LibName LibType LibFiles Dependencies OutputFolder)
  add_library(${LibName} ${LibType} ${LibFiles})
  target_link_libraries(${LibName} ${Dependencies})
endfunction()

function(setup_executable_in_project ExecutableName ProjectName ProjectDirectory ExecutableDirectory Dependencies)
  include_directories(${ProjectDirectory}/src ${ProjectDirectory}/include ${ARGV5})

  file(GLOB_RECURSE Files ${ExecutableDirectory}/*.cpp ${ExecutableDirectory}/*.c ${ExecutableDirectory}/*.h)

  setup_executable(${ExecutableName} "${Files}" "${Dependencies}" ${ProjectName}/)
endfunction()

function(setup_executable ExeName ExeFiles Dependencies OutputFolder)
  add_executable(${ExeName} ${ExeFiles})
  target_link_libraries(${ExeName} ${Dependencies})
endfunction()


