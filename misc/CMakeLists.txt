# CMakeLists.txt for katcp_devel/misc
# Author: N. Oblath
# Created: March 24, 2014

set( MISC_CMDS_DIR ${LIB_INSTALL_DIR}/kcs )
set( MISC_INIT_DIR ${KATCP_ETC_DIR}/init.d )
set( MISC_LOGROTATE_DIR ${KATCP_ETC_DIR}/logrotate.d )

install( FILES init.katcp DESTINATION ${MISC_CMDS_DIR} )
install( FILES kcs.initscript DESTINATION ${MISC_INIT_DIR} RENAME kcs )
install( FILES kcs.logrotate DESTINATION ${MISC_LOGROTATE_DIR} RENAME kcs )

