# CMakeLists.txt for log
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcplog log.c )
target_link_libraries( kcplog ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcplog )