# CMakeLists.txt for cmd
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpcmd br.c )
target_link_libraries( kcpcmd ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpcmd )