# Install script for directory: /Users/harry/Desktop/argos3-harry/src/plugins/robots/generic

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/generic/control_interface" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_altitude_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_battery_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_camera_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_camera_sensor_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_camera_sensor_algorithms/ci_camera_sensor_directional_led_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_camera_sensor_algorithms/ci_camera_sensor_led_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_camera_sensor_algorithms/ci_camera_sensor_tag_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_colored_blob_omnidirectional_camera_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_colored_blob_perspective_camera_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_differential_steering_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_differential_steering_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_directional_leds_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_gripper_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_ground_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_leds_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_light_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_magnets_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_pan_tilt_camera_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_positioning_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_proximity_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_quadrotor_position_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_quadrotor_speed_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_radios_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_radios_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_range_and_bearing_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/control_interface/ci_range_and_bearing_sensor.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/generic/simulator" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/battery_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/camera_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/camera_sensor_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/camera_sensor_algorithms/camera_sensor_directional_led_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/camera_sensor_algorithms/camera_sensor_led_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/camera_sensor_algorithms/camera_sensor_tag_detector_algorithm.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/colored_blob_omnidirectional_camera_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/colored_blob_perspective_camera_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/differential_steering_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/differential_steering_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/directional_leds_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/gripper_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/ground_rotzonly_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/leds_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/light_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/magnets_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/positioning_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/proximity_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/quadrotor_position_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/quadrotor_speed_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/radios_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/radios_default_sensor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/range_and_bearing_default_actuator.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/robots/generic/simulator/range_and_bearing_medium_sensor.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/plugins/robots/generic/libargos3plugin_simulator_genericrobot.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/entities"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/media"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_genericrobot.dylib")
    endif()
  endif()
endif()

