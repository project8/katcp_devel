# CMakeLists.txt for katcp_devel/tcpborphserver3
# Author: N. Oblath
# Created: March 24, 2014

set( HEADER_FILES
    bof.h
    loadbof.h
    tapper.h
    tcpborphserver3.h
    tg.h
)

set( SOURCE_FILES
    ev.c
    hwmon.c
    loadbof.c
    main.c
    raw.c
    subprocess.c
    tapper.c
    tg.c
    upload.c
)

set( CMAKE_C_FLAGS -fPIC )

add_executable( tcpborphserver3 ${SOURCE_FILES} )
target_link_libraries( tcpborphserver3 ${KATCP_LIBRARIES} dl z )
pbuilder_install_executables( tcpborphserver3 )
pbuilder_install_headers( ${HEADER_FILES} )
