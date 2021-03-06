/**
 * @file <argos3/plugins/simulator/physics_engines/dynamics3d/dynamics3d_shape_manager.cpp>
 *
 * @author Michael Allwright - <allsey87@gmail.com>
 * @author Weixu Zhu- <zhuweixu_harry@126.com>
 */

#include "dynamics3d_shape_manager.h"
#include <argos3/core/utility/configuration/argos_exception.h>

namespace argos {

   /****************************************/
   /****************************************/

   std::vector<CDynamics3DShapeManager::SBoxResource>
      CDynamics3DShapeManager::m_vecBoxResources;

   /****************************************/
   /****************************************/
   
   std::shared_ptr<btCollisionShape> CDynamics3DShapeManager::RequestBox(const btVector3& c_half_extents) {
      std::vector<SBoxResource>::iterator itBoxResource;      
      for(itBoxResource = std::begin(m_vecBoxResources);
          itBoxResource != std::end(m_vecBoxResources);
          ++itBoxResource) {
         if(itBoxResource->HalfExtents == c_half_extents) break;
      }      
      /* If the resource doesn't exist, create a new one */
      if(itBoxResource == std::end(m_vecBoxResources)) {
         itBoxResource = 
            m_vecBoxResources.emplace(itBoxResource, c_half_extents);
      }
      return std::static_pointer_cast<btCollisionShape>(itBoxResource->Shape);
   }

   /****************************************/
   /****************************************/

   CDynamics3DShapeManager::SBoxResource::SBoxResource(const btVector3& c_half_extents) : 
      HalfExtents(c_half_extents),
      Shape(new btBoxShape(c_half_extents)) {}

   /****************************************/
   /****************************************/

   std::vector<CDynamics3DShapeManager::SCylinderResource>
      CDynamics3DShapeManager::m_vecCylinderResources;

   /****************************************/
   /****************************************/
   
   std::shared_ptr<btCollisionShape> CDynamics3DShapeManager::RequestCylinder(const btVector3& c_half_extents) {
      std::vector<SCylinderResource>::iterator itCylinderResource;      
      for(itCylinderResource = std::begin(m_vecCylinderResources);
          itCylinderResource != std::end(m_vecCylinderResources);
          ++itCylinderResource) {
         if(itCylinderResource->HalfExtents == c_half_extents) break;
      }      
      /* If the resource doesn't exist, create a new one */
      if(itCylinderResource == std::end(m_vecCylinderResources)) {
         itCylinderResource = 
            m_vecCylinderResources.emplace(itCylinderResource, c_half_extents);
      }
      return std::static_pointer_cast<btCollisionShape>(itCylinderResource->Shape);
   }

   /****************************************/
   /****************************************/

   CDynamics3DShapeManager::SCylinderResource::SCylinderResource(const btVector3& c_half_extents) : 
      HalfExtents(c_half_extents),
      Shape(new btCylinderShape(c_half_extents)) {}

   /****************************************/
   /****************************************/

   std::vector<CDynamics3DShapeManager::SSphereResource> 
      CDynamics3DShapeManager::m_vecSphereResources;

   /****************************************/
   /****************************************/
   
   std::shared_ptr<btCollisionShape> CDynamics3DShapeManager::RequestSphere(btScalar f_radius) {
      std::vector<SSphereResource>::iterator itSphereResource;      
      for(itSphereResource = std::begin(m_vecSphereResources);
          itSphereResource != std::end(m_vecSphereResources);
          ++itSphereResource) {
         if(itSphereResource->Radius == f_radius) break;
      }      
      /* If the resource doesn't exist, create a new one */
      if(itSphereResource == std::end(m_vecSphereResources)) {
         itSphereResource = 
            m_vecSphereResources.emplace(itSphereResource, f_radius);
      }
      return std::static_pointer_cast<btCollisionShape>(itSphereResource->Shape);
   }

   /****************************************/
   /****************************************/

   CDynamics3DShapeManager::SSphereResource::SSphereResource(btScalar f_radius) : 
      Radius(f_radius),
      Shape(new btSphereShape(f_radius)) {}

   /****************************************/
   /****************************************/

   std::vector<CDynamics3DShapeManager::SConvexhullResource> 
      CDynamics3DShapeManager::m_vecConvexhullResources;

   /****************************************/
   /****************************************/

   std::shared_ptr<btCollisionShape> CDynamics3DShapeManager::RequestConvexhull(const std::vector<btVector3>& vec_convexhull_points) {
      std::vector<SConvexhullResource>::iterator itConvexhullResource;      
      for(itConvexhullResource = std::begin(m_vecConvexhullResources);
          itConvexhullResource != std::end(m_vecConvexhullResources);
          ++itConvexhullResource) {
         if(itConvexhullResource->VecConvexhullPoints == vec_convexhull_points) break;
      }      
      /* If the resource doesn't exist, create a new one */
      if(itConvexhullResource == std::end(m_vecConvexhullResources)) {
         itConvexhullResource = 
            m_vecConvexhullResources.emplace(itConvexhullResource, vec_convexhull_points);
      }
      return std::static_pointer_cast<btCollisionShape>(itConvexhullResource->Shape);
   }

   /****************************************/
   /****************************************/

   CDynamics3DShapeManager::SConvexhullResource::SConvexhullResource(const std::vector<btVector3>& vec_convexhull_points) :
      VecConvexhullPoints(vec_convexhull_points),
      Shape(new btConvexHullShape()) {
      Shape->setMargin(0);
      std::vector<btVector3>::const_iterator itPoints;      
      for(itPoints = std::begin(vec_convexhull_points);
          itPoints != std::end(vec_convexhull_points);
          ++itPoints) {
         Shape->addPoint(*itPoints);
      }
   }

   /****************************************/
   /****************************************/
}

