# CMakeLists.txt for msg
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcpmsg msg.c )
target_link_libraries( kcpmsg ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcpmsg )