include(default_config)
project(Hyperion_cli)

include(cmake_utils)

include_directories(
  SYSTEM
  ${utils_INCLUDE_DIR}
  ${MKL_INCLUDE_DIR}
)

include_directories(${ProjectDirectory}/src ${ProjectDirectory}/include ${ARGV5})


file(GLOB_RECURSE Files ${PROJECT_SOURCE_DIR}/*.cpp ${PROJECT_SOURCE_DIR}/*.c ${PROJECT_SOURCE_DIR}/*.h})

set(Dependencies "utils")

add_executable(hyperion_cli ${Files})
target_link_libraries(hyperion_cli ${Dependencies})

#setup_executable_in_project(
#  hyperion_cli
#  Hyperion_cli
#  ${PROJECT_SOURCE_DIR}
#  ${PROJECT_SOURCE_DIR}/cli
#  "utils"
#)
  



