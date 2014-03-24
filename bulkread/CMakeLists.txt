# CMakeLists.txt for katcp_devel/bulkread
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpbr br.c )
target_link_libraries( kcpbr ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpbr )