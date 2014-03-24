# CMakeLists.txt for examples
# Author: N. Oblath
# Created: March 24, 2014

add_executable( new-client-example new-client-example.c )
target_link_libraries( new-client-example ${KATCP_LIBRARIES} )

add_executable( client-example client-example.c )
target_link_libraries( client-example ${KATCP_LIBRARIES} )

add_executable( server-example server-example.c )
target_link_libraries( server-example ${KATCP_LIBRARIES} )

pbuilder_install_executables( new-client-example client-example server-example )
