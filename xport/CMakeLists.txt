# CMakeLists.txt for xport
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpxport xport.c )
target_link_libraries( kcpxport ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpxport )