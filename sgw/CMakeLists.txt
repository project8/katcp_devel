# CMakeLists.txt for katcp_devel/sgw
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpsgw sgw.c )
target_link_libraries( kcpsgw ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpsgw )