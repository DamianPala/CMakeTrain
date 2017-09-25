cmake_minimum_required(VERSION 3.8)

project(CMakeTrain C)

set(SRC_PATH src)
set(INCLUDE_PATH include)

if(${CMAKE_BUILD_TYPE} STREQUAL debug)
	set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/build/debug" CACHE PATH "..." FORCE)
elseif(${CMAKE_BUILD_TYPE} STREQUAL release)
	set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/build/release" CACHE PATH "..." FORCE)
endif()

file(GLOB SOURCES "${SRC_PATH}/*c")


# Following for testing...
MESSAGE( STATUS "CMAKE_BUILD_TYPE: " ${CMAKE_BUILD_TYPE} )

if(${CMAKE_BUILD_TYPE} STREQUAL "debug")
	MESSAGE( STATUS "Is If!")	
endif()
#end testing


include_directories(${INCLUDE_PATH})

add_executable(main ${SOURCES})

install(TARGETS main DESTINATION bin)
