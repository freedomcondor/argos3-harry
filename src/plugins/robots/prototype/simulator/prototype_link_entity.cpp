/**
 * @file <argos3/plugins/robots/prototype/simulator/prototype_link_entity.cpp>
 *
 * @author Michael Allwright - <allsey87@gmail.com>
 * @author Weixu Zhu - <zhuweixu_harry@126.com>
 */

#include "prototype_link_entity.h"
#include <argos3/core/simulator/entity/composable_entity.h>
#include <argos3/plugins/robots/prototype/simulator/prototype_entity.h>

namespace argos {

   /****************************************/
   /****************************************/

   CPrototypeLinkEntity::CPrototypeLinkEntity(CComposableEntity* pc_parent) :
      CEntity(pc_parent),
		m_eGeometry(EGeometry::BOX),
		m_cExtents(0.0f, 0.0f, 0.0f),
		m_fMass(0.0f),
      m_psAnchor(nullptr) {}

   /****************************************/
   /****************************************/

   void CPrototypeLinkEntity::Init(TConfigurationNode& t_tree) {
      try {
         /* Init parent */
         CEntity::Init(t_tree);
         /* Parse link geometry and dimensions */
         std::string strLinkGeometry;
         GetNodeAttribute(t_tree, "geometry", strLinkGeometry);
         if(strLinkGeometry == "box") {
            m_eGeometry = BOX; 
            GetNodeAttribute(t_tree, "size", m_cExtents);
         } else if(strLinkGeometry == "cylinder") {
            m_eGeometry = CYLINDER;
            Real fRadius;
            Real fHeight;
            GetNodeAttribute(t_tree, "height", fHeight);
            GetNodeAttribute(t_tree, "radius", fRadius);
            m_cExtents.Set(fRadius * 2.0f, fRadius * 2.0f, fHeight);
         } else if(strLinkGeometry == "sphere") {
            m_eGeometry = SPHERE;
            Real fRadius;
            GetNodeAttribute(t_tree, "radius", fRadius);
            m_cExtents.Set(fRadius * 2.0f, fRadius * 2.0f, fRadius * 2.0f);
         } else if(strLinkGeometry == "convexhull") {
            m_eGeometry = CONVEXHULL;
            //m_cExtents.Set(1.0f, 1.0f, 1.0f);
            m_cExtents.Set(0.0f, 0.0f, 0.0f);
            TConfigurationNodeIterator itLink("point");
            for(itLink = itLink.begin(&t_tree);
                itLink != itLink.end();
                ++itLink) {
               CVector3 cPointPosition;
               GetNodeAttribute(*itLink, "position", cPointPosition);
               m_vecConvexhullPoints.push_back(cPointPosition);
            }
         } else {
            /* unknown geometry requested */
            THROW_ARGOSEXCEPTION("Geometry \"" << strLinkGeometry << "\" is not implemented");
         }
         /* Parse link geometry and dimensions */
         GetNodeAttribute(t_tree, "mass", m_fMass);
         /* Get the offset position of the link */
         CVector3 cOffsetPosition;
         GetNodeAttributeOrDefault(t_tree, "position", cOffsetPosition, cOffsetPosition);
         /* Get the offset orientation of the link */
         CQuaternion cOffsetOrientation;
         GetNodeAttributeOrDefault(t_tree, "orientation", cOffsetOrientation, cOffsetOrientation);
         /* Create an anchor for this link */
         CEmbodiedEntity& cBody = GetParent().GetParent().GetComponent<CEmbodiedEntity>("body");
         m_psAnchor = &(cBody.AddAnchor(GetId(), cOffsetPosition, cOffsetOrientation));
         /* Enable the anchor */
         m_psAnchor->Enable();
      }
      catch(CARGoSException& ex) {
         THROW_ARGOSEXCEPTION_NESTED("Error while initializing link entity", ex);
      }
   }

   /****************************************/
   /****************************************/

   REGISTER_STANDARD_SPACE_OPERATIONS_ON_ENTITY(CPrototypeLinkEntity);

   /****************************************/
   /****************************************/

}
