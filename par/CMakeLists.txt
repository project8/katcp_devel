# CMakeLists.txt for katcp_devel/par
# Author: N. Oblath
# Created: March 24, 2014

add_executable( kcppar par.c )
target_link_libraries( kcppar ${KATCP_LIBRARIES} )
pbuilder_install_executables( kcppar )