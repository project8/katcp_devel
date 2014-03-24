# CMakeLists.txt for modules
# Author: N. Oblath
# Created: March 24, 2014

set( KSC_SOURCE_FILES
    ${PROJECT_SOURCE_DIR}/ksc/statemachine.c 
    ${PROJECT_SOURCE_DIR}/ksc/actor.c 
    ${PROJECT_SOURCE_DIR}/ksc/statemachine_base.c
)

set( CMAKE_C_FLAGS -fPIC )
#add_definitions( VERSION=\"$(GITVER)\" )

add_library( mod_dsorcer mod_dsorcer.c ${KSC_SOURCE_FILES} ) 
add_library( mod_conf_parser mod_conf_parser.c ${KSC_SOURCE_FILES} ) 
add_library( mod_simple_ops mod_simple_ops.c ${KSC_SOURCE_FILES} ) 
add_library( mod_roach_comms mod_roach_comms.c ${KSC_SOURCE_FILES} ) 

target_link_libraries( mod_dsorcer ${KATCP_LIBRARIES} crypt )
target_link_libraries( mod_conf_parser ${KATCP_LIBRARIES} crypt )
target_link_libraries( mod_simple_ops ${KATCP_LIBRARIES} crypt )
target_link_libraries( mod_roach_comms ${KATCP_LIBRARIES} crypt )

pbuilder_install_libraries( mod_dsorcer mod_conf_parser mod_simple_ops mod_roach_comms )