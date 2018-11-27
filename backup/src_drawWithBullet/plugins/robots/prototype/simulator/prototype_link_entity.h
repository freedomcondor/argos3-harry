/**
 * @file <argos3/plugins/robots/prototype/simulator/prototype_link_entity.h>
 *
 * @author Michael Allwright - <allsey87@gmail.com>
 * @author Weixu Zhu - <zhuweixu_harry@126.com>
 */

#ifndef PROTOTYPE_LINK_ENTITY_H
#define PROTOTYPE_LINK_ENTITY_H

namespace argos {
   class CPrototypeLinkEntity;
}

#include <argos3/core/utility/math/vector3.h>
#include <argos3/core/utility/math/quaternion.h>
#include <argos3/core/simulator/entity/embodied_entity.h>
#include <unordered_map>

namespace argos {

   class CPrototypeLinkEntity : public CEntity {

   public:

      ENABLE_VTABLE();

      using TVector = std::vector<CPrototypeLinkEntity*>;
      using TVectorIterator = std::vector<CPrototypeLinkEntity*>::iterator;
      using TVectorConstIterator = std::vector<CPrototypeLinkEntity*>::const_iterator;

   public:
      enum EGeometry {
         CYLINDER,
         BOX,
         SPHERE,
         CONVEXHULL,
      };

   public:

      CPrototypeLinkEntity(CComposableEntity* pc_parent);

      virtual ~CPrototypeLinkEntity() {}

      virtual void Init(TConfigurationNode& t_tree);

      virtual std::string GetTypeDescription() const {
         return "link";
      }

      EGeometry GetGeometry() const {
         return m_eGeometry;
      }

      const CVector3& GetExtents() const {
         return m_cExtents;
      }

      const std::vector<CVector3>& GetPolyhedronPoints() const {
         return m_vecPolyhedronPoints;
      }

      void SetConvexhullPoints(const std::vector<CVector3>& vec_convexhull_points) {
         m_vecConvexhullPoints = vec_convexhull_points;
      }

      const std::vector<CVector3>& GetConvexhullPoints() const {
         return m_vecConvexhullPoints;
      }

      void SetConvexhullFaces(const std::vector<std::vector<int>>& vec_convexhull_faces) {
         m_vecConvexhullFaces = vec_convexhull_faces;
      }

      const std::vector<std::vector<int>>& GetConvexhullFaces() const {
         return m_vecConvexhullFaces;
      }

      Real GetMass() const {
         return m_fMass;
      }

      SAnchor& GetAnchor() {
         return *m_psAnchor;
      } 

      const SAnchor& GetAnchor() const {
         return *m_psAnchor;
      } 

   private:

		EGeometry m_eGeometry;
		CVector3 m_cExtents;
      std::vector<CVector3> m_vecPolyhedronPoints;
      std::vector<CVector3> m_vecConvexhullPoints;
      std::vector<std::vector<int>> m_vecConvexhullFaces;
		Real m_fMass;
      SAnchor* m_psAnchor;
   };

}

#endif
