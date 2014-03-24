# katcp.cmake
# Author: N. Oblath
# Craeted: March 24, 2014

set( KATCP_ETC_DIR ${CMAKE_INSTALL_PREFIX}/etc CACHE PATH "/etc install directory (independent of CMAKE_INSTALL_PREFIX)" )

add_definitions( 
    # where the C implementation has diverged from the katcp standard,
    # force standard behaviour. Currently only one case: log-level affects
    # all connections immediately in standard, otherwise local connection only
    -DKATCP_STRICT_CONFORMANCE 
    # how many messages to hold before forcing a flush, only useful 
    # on memory constrained systems. When this value is unset the 
    # system buffers as much as needed
    #-DKATCP_FLUSH_THRESHOLD=4
    # enable floating point support (floating point sensor type)
    # unless you don't want to use your fpu (or don't have one) enable this
    -DKATCP_USE_FLOATS 
    # perform redundant checks, abort if things don't look alright
    # enabling this reduces performance and makes the system less
    # resistant to failures, but will also notice failures sooner
    -DKATCP_CONSISTENCY_CHECKS
    # log selected noncritical failures to stderr 
    -DKATCP_STD_ERRORS 
    # log client messages
    -DKATCP_LOG_REQUESTS
    # enable the ability to manage katcp subprocesses
    -DKATCP_SUBPROCESS
    # enable newer, broken or nonfunctional code
    -DKATCP_EXPERIMENTAL
    # pick a protocol reversion from the list. Making up
    # your own major values doesn't work unless you also implement what 
    # the protocol requires
    -DKATCP_PROTOCOL_MAJOR_VERSION=5 -DKATCP_PROTOCOL_MINOR_VERSION=0
    #-DKATCP_PROTOCOL_MAJOR_VERSION=4 -DKATCP_PROTOCOL_MINOR_VERSION=9
)

# version via git
set( KATCP_VERSION "" )
find_package( Git )
if( GIT_FOUND )
    execute_process( COMMAND ${GIT_EXECUTABLE} describe --always --tags --dirty   OUTPUT_VARIABLE KATCP_VERSION  OUTPUT_STRIP_TRAILING_WHITESPACE )
endif( GIT_FOUND )
add_definitions( -DVERSION=\"${KATCP_VERSION}\" )

# build date
execute_process( COMMAND date -u +%Y-%m-%dT%H:%M:%S  OUTPUT_VARIABLE KATCP_BUILD_DATE OUTPUT_STRIP_TRAILING_WHITESPACE )
add_definitions( -DBUILD=\"${KATCP_BUILD_DATE}\" )