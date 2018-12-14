# Install script for directory: /Users/harry/Desktop/argos3-harry/src/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/rate.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/signal_processing.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/string_utilities.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/configuration" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/argos_configuration.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/argos_exception.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/base_configurable_resource.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/command_line_arg_parser.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/memento.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/configuration/tinyxml" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/tinyxml/ticpp.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/tinyxml/ticpprc.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/tinyxml/tinystr.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/configuration/tinyxml/tinyxml.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/datatypes" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/datatypes/any.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/datatypes/byte_array.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/datatypes/color.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/datatypes/datatypes.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/datatypes/set.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/logging" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/logging/argos_colored_text.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/logging/argos_log.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/networking" TYPE FILE FILES "/Users/harry/Desktop/argos3-harry/src/core/utility/networking/tcp_socket.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/plugins" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/plugins/dynamic_loading.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/plugins/vtable.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/plugins/factory.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/plugins/factory_impl.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/profiler" TYPE FILE FILES "/Users/harry/Desktop/argos3-harry/src/core/utility/profiler/profiler.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/math" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/angles.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/box.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/cylinder.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/general.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/plane.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/quaternion.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/range.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/ray2.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/ray3.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/rng.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/vector2.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/vector3.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/convex_hull.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/utility/math/matrix" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/matrix.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/squarematrix.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/rotationmatrix2.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/rotationmatrix3.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/transformationmatrix2.h"
    "/Users/harry/Desktop/argos3-harry/src/core/utility/math/matrix/transformationmatrix3.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/control_interface" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/control_interface/ci_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/core/control_interface/ci_controller.h"
    "/Users/harry/Desktop/argos3-harry/src/core/control_interface/ci_sensor.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/argos_command_line_arg_parser.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/loop_functions.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/query_plugins.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/simulator.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/entity" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/composable_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/controllable_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/embodied_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/entity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/floor_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/entity/positional_entity.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/medium" TYPE FILE FILES "/Users/harry/Desktop/argos3-harry/src/core/simulator/medium/medium.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/physics_engine" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/physics_engine/physics_engine.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/physics_engine/physics_model.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/visualization" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/visualization/default_visualization.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/visualization/visualization.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/space/positional_indices" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/positional_indices/grid.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/positional_indices/grid_impl.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/positional_indices/positional_index.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/positional_indices/space_hash.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/positional_indices/space_hash_native.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/simulator/space" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/space.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/space_multi_thread_balance_length.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/space_multi_thread_balance_quantity.h"
    "/Users/harry/Desktop/argos3-harry/src/core/simulator/space/space_no_threads.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/core/wrappers/lua" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/core/wrappers/lua/lua_controller.h"
    "/Users/harry/Desktop/argos3-harry/src/core/wrappers/lua/lua_utility.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/core/libargos3core_simulator.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3core_simulator.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3core_simulator.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3core_simulator.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3core_simulator.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec" TYPE EXECUTABLE FILES "/Users/harry/Desktop/argos3-harry/build/core/argos3")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/argos3" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/argos3")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/argos3")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/argos3")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/argos3")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/argos3/cmake" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/cmake/ARGoSCheckQTOpenGL.cmake"
    "/Users/harry/Desktop/argos3-harry/src/cmake/FindLua52.cmake"
    )
endif()

