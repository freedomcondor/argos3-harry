# Install script for directory: /Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/argos3/licenses" TYPE FILE FILES "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/CHIPMUNK_LICENSE.txt")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpGearJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpSlideJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpPivotJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpDampedRotarySpring.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpSimpleMotor.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpGrooveJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpRotaryLimitJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpRatchetJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpConstraint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/util.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpPinJoint.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/constraints/cpDampedSpring.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpShape.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpBody.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/chipmunk_unsafe.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpSpace.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpVect.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/chipmunk_private.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/chipmunk_types.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpBB.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpArbiter.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpSpatialIndex.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/chipmunk_ffi.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/cpPolyShape.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/chipmunk-physics/include/chipmunk.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/simulator/physics_engines/dynamics2d" TYPE FILE FILES
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_box_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_cylinder_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_differentialsteering_control.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_engine.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_gripping.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_single_body_object_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_multi_body_object_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_stretchable_object_model.h"
    "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/dynamics2d/dynamics2d_velocity_control.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/harry/Desktop/argos3-harry/build/plugins/simulator/physics_engines/dynamics2d/libargos3plugin_simulator_dynamics2d.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_dynamics2d.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_dynamics2d.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/src/plugins/simulator/physics_engines/physx/physx_dist/lib/osx64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_dynamics2d.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/harry/Desktop/argos3-harry/build/core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_dynamics2d.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_dynamics2d.dylib")
    endif()
  endif()
endif()

