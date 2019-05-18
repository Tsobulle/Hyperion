include(default_config)
project(utils)

include_directories(
  SYSTEM
  ${MKL_INCLUDE_DIR}
)

set(Dependencies ${MKL_LIBRARIES})
setup_project(utils ${PROJECT_SOURCE_DIR} STATIC "${Dependencies}")
#done
