# CMakeLists.txt for katcp_devel/dmon
# Author: N. Oblath
# Created: March 24, 2014

add_executable( dmon dmon.c )
target_link_libraries( dmon ${KATCP_LIBRARIES} )
pbuilder_install_executables( dmon )