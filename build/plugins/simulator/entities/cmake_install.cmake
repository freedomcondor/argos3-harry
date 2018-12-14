# Install script for directory: /Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/simulator/entities" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/battery_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/box_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/cylinder_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/directional_led_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/directional_led_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/gripper_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/ground_sensor_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/led_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/led_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/light_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/light_sensor_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/magnet_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/magnet_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/omnidirectional_camera_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/perspective_camera_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/proximity_sensor_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/quadrotor_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/rab_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/radio_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/radio_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/rotor_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/tag_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/tag_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/wheeled_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/entities/wifi_equipped_entity.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/entities/libargos3plugin_simulator_entities.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/media"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_entities.dylib")
    endif()
  endif()
endif()
