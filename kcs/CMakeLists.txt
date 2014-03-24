# CMakeLists.txt for kcs
# Author: N. Oblath
# Created: March 24, 2014

set( SOURCE_FILES
    watchannounce.c 
    subprocess.c 
    actor.c 
    statemachine.c 
    statemachine_base.c 
    roachpool.c 
    execpy.c 
    parser.c 
    kcserver.c 
    basic.c
    shared.c
)

add_executable( kcs ${SOURCE_FILES} )
target_link_libraries( kcs ${KATCP_LIBRARIES} dl )
pbuilder_install_executables( kcs )