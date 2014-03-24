# CMakeLists.txt for katcp_devel
# Author: N. Oblath
# Created: March 24, 2014

cmake_minimum_required(VERSION 2.8 )

# Define the project
project( katcp_devel )

# Specify the local directory for CMake modules
set( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}" )

# Include the build script
include( PackageBuilder )

# Set the version and associated variables
pbuilder_prepare_project( 1 0 0 )

// 
include( katcp.cmake )

// flag to enable building of the test executables
option (KATCP_ENABLE_TESTING "Build the test executables" OFF)


// library
add_subdirectory( katcp )

// executables
add_subdirectory( kcs )                
add_subdirectory( cmd )
add_subdirectory( examples )
add_subdirectory( sq )
add_subdirectory( bulkread )
add_subdirectory( tmon )
add_subdirectory( log )
add_subdirectory( fmon )
add_subdirectory( modules )
add_subdirectory( tcpborphserver3 )
add_subdirectory( msg )
add_subdirectory( delay )
add_subdirectory( par )
add_subdirectory( sgw )
add_subdirectory( xport )
add_subdirectory( con )
add_subdirectory( dmon )

// misc
add_subdirectory( scripts )
add_subdirectory( misc )