set(AMIGA_GCCUTILS_TARGET AmigaGCCUtils)
set (CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${CMAKE_CURRENT_LIST_DIR}") 

get_filename_component(AMIGA_GCCUTILS_PATH_PREFIX ${CMAKE_CURRENT_LIST_DIR} DIRECTORY)

find_library(AMIGA_GCCUTILS_LIBRARY_PATH ${AMIGA_GCCUTILS_TARGET} HINTS "${AMIGA_GCCUTILS_PATH_PREFIX}/lib")
if (NOT AMIGA_GCCUTILS_LIBRARY_PATH)
	message(FATAL_ERROR "${AMIGA_GCCUTILS_LIBRARY_PATH} can not be determined!")
endif()

add_library(${AMIGA_GCCUTILS_TARGET} STATIC IMPORTED)
set_target_properties(${AMIGA_GCCUTILS_TARGET} PROPERTIES IMPORTED_LOCATION "${AMIGA_GCCUTILS_LIBRARY_PATH}")

include_directories(${AMIGA_GCCUTILS_PATH_PREFIX}/include) 

set(AMIGA_GCCUTILS_TARGET)
