# CMakeLists.txt for katcp_devel/katcp
# Author: N. Oblath
# Created: March 24, 2014

set( HEADER_FILES
    katcp.h 
    katcl.h 
    katpriv.h 
    fork-parent.h 
    avltree.h 
    netc.h
)

set( SOURCE_FILES
    line.c 
    netc.c 
    dispatch.c 
    loop.c 
    log.c 
    time.c 
    shared.c 
    misc.c 
    server.c 
    client.c 
    ts.c 
    nonsense.c 
    notice.c 
    job.c 
    parse.c 
    rpc.c 
    queue.c 
    map.c 
    kurl.c 
    version.c 
    fork-parent.c 
    avltree.c 
    ktype.c 
    stack.c 
    services.c 
    dbase.c 
    arb.c 
    dpx.c 
    spointer.c 
    event.c 
    bytebit.c 
    endpoint.c 
    generic-queue.c
)


add_library( katcp ${SOURCE_FILES} )
target_link_libraries( katcp )

pbuilder_install_libraries( katcp )
pbuilder_install_headers( ${HEADER_FILES} )

set( KATCP_LIBRARIES katcp PARENT_SCOPE )