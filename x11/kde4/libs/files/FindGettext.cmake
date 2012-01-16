# - Find GNU gettext tools and define GETTEXT_PROCESS_PO_FILES
# $OpenBSD$
# Relies on system FindGettext.cmake, but provides an additional macro:
#
# GETTEXT_PROCESS_PO_FILES ( languge )
#    This will compile translations for given languages, or for all
#    languages if ALL is given, from given PO files.
#

INCLUDE(${LOCALBASE}/share/cmake/Modules/FindGettext.cmake)

MACRO(GETTEXT_PROCESS_PO_FILES _lang)
   SET(_gmoFiles)
   SET(_args ${ARGN})
   SET(_addToAll)
   SET(_installDest)

   LIST(GET _args 0 _tmp)
   IF("${_tmp}" STREQUAL "ALL")
      SET(_addToAll ALL)
      LIST(REMOVE_AT _args 0)
   ENDIF("${_tmp}" STREQUAL "ALL")
   
   LIST(GET _args 0 _tmp)
   IF("${_tmp}" STREQUAL "INSTALL_DESTINATION")
      LIST(GET _args 1 _installDest )
      LIST(REMOVE_AT _args 0 1)
   ENDIF("${_tmp}" STREQUAL "INSTALL_DESTINATION")
   
#    message(STATUS "2 all ${_addToAll} dest ${_installDest} args: ${_args}")
   
   FOREACH(_current_PO_FILE ${_args})
      GET_FILENAME_COMPONENT(_basename ${_current_PO_FILE} NAME_WE)
      SET(_gmoFile ${CMAKE_CURRENT_BINARY_DIR}/${_basename}.gmo)
      add_custom_command(OUTPUT ${_gmoFile}
            COMMAND ${GETTEXT_MSGFMT_EXECUTABLE} -o ${_gmoFile} ${_current_PO_FILE}
            WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
            DEPENDS ${_current_PO_FILE}
         )

      IF(_installDest)
         INSTALL(FILES ${CMAKE_CURRENT_BINARY_DIR}/${_basename}.gmo DESTINATION ${_installDest}/${_lang}/LC_MESSAGES/ RENAME ${_basename}.mo)
      ENDIF(_installDest)
      LIST(APPEND _gmoFiles ${_gmoFile})
   ENDFOREACH(_current_PO_FILE)
   ADD_CUSTOM_TARGET(pofiles ${_addToAll} DEPENDS ${_gmoFiles})
ENDMACRO(GETTEXT_PROCESS_PO_FILES)

