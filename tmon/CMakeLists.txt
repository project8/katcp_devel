# CMakeLists.txt for tmon
# Author: N. Oblath
# Created: March 24, 2014

add_executable( tmon tmon.c )
target_link_libraries( tmon ${KATCP_LIBRARIES} )
pbuilder_install_executables( tmon )