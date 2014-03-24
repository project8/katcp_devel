# CMakeLists.txt for katcp_devel/fmon
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpfmon fmon.c )
target_link_libraries( kcpfmon ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpfmon )