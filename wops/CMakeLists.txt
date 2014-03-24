# CMakeLists.txt for wops
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpwops wops.c )
target_link_libraries( kcpwops ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpwops )