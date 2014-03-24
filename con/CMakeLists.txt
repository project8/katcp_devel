# CMakeLists.txt for katcp_devel/con
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpcon con.c )
target_link_libraries( kcpcon ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpcon )