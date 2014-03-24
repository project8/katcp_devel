# CMakeLists.txt for katcp_deve/kcs
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

if( KATCP_ENABLE_TESTING )
    add_definitions( -DSTANDALONE )

    add_executable( test-parser parser.c )
    target_link_libraries( test-parser )

    add_executable( test-execpy execpy.c )
    target_link_libraries( test-execpy ${KATCP_LIBRARIES} )

    add_executable( test-roachpool roachpool.c )
    target_link_libraries( test-roachpool )

    add_executable( test-kurl kurl.c )
    target_link_libraries( test-kurl )

    add_executable( test-statemachine statemachine.c )
    target_link_libraries( test-statemachine )

    add_executable( test-avltree avltree.c )
    target_link_libraries( test-avltree )

    add_executable( test-type ktype.c )
    target_link_libraries( test-type ${KATCP_LIBRARIES} )

    add_executable( test-actor actor.c statemachine.c )
    target_link_libraries( test-actor ${KATCP_LIBRARIES} )

endif( KATCP_ENABLE_TESTING )