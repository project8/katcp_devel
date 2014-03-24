# CMakeLists.txt for katcp_devel/sq
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpsq sq.c )
target_link_libraries( kcpsq ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpsq )