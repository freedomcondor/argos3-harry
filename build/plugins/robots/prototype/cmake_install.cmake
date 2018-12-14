# Install script for directory: /Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/prototype/control_interface" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/control_interface/ci_prototype_joints_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/control_interface/ci_prototype_joints_actuator.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/prototype/simulator" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_joints_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_joint_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_joint_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_link_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_link_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/dynamics3d_prototype_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/prototype_joints_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/prototype/simulator/qtopengl_prototype.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/plugins/robots/prototype/libargos3plugin_simulator_prototype.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/robots/generic"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/physics_engines/dynamics3d"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/visualizations/qt-opengl"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/entities"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/media"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_prototype.dylib")
    endif()
  endif()
endif()

