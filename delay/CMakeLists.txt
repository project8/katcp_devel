# CMakeLists.txt for katcp_devel/delay
# Author: N. Oblath
# Created: March 24, 2014

add_executable( k7-delay delay.c )
target_link_libraries( k7-delay ${KATCP_LIBRARIES} )
pbuilder_install_executables( k7-delay )