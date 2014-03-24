# CMakeLists.txt for katcp_devel/cmd
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpcmd cmd.c )
target_link_libraries( kcpcmd ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpcmd )