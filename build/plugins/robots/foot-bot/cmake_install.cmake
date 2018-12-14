# Install script for directory: /Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/foot-bot/control_interface" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_base_ground_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_distance_scanner_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_distance_scanner_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_encoder_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_gripper_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_light_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_motor_ground_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_proximity_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_turret_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/control_interface/ci_footbot_turret_encoder_sensor.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/foot-bot/simulator" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/dynamics2d_footbot_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/pointmass3d_footbot_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_base_ground_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_distance_scanner_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_distance_scanner_equipped_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_distance_scanner_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_gripper_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_light_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_motor_ground_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_proximity_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_turret_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_turret_encoder_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/footbot_turret_entity.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/foot-bot/simulator/qtopengl_footbot.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/plugins/robots/foot-bot/libargos3plugin_simulator_footbot.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/robots/generic"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/physics_engines/dynamics2d"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/physics_engines/pointmass3d"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/visualizations/qt-opengl"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/entities"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/media"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_footbot.dylib")
    endif()
  endif()
endif()

