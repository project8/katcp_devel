# CMakeLists.txt for katcp_devel/wss
# Author: N. Oblath
# Created: March 24, 2014

add_executable( wss server.c wss.c )
target_link_libraries( kcpwops ${KATCP_LIBRARIES} ssl )
pbuilder_install_executables( kcpwops )
pbuilder_install_headers( server.h )