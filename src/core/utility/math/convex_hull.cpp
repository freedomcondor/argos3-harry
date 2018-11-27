/**
 * @file <argos3/core/utility/math/convex_hull.cpp>
 *
 * @author Weixu Zhu <zhuweixu_harry@126.com>
 */

#include "convex_hull.h"

namespace argos {

   /****************************************/
   /****************************************/

   void CConvexHull::ComputeConvexHull() {
      /* clean m_SEdge and m_vecFaces, because we are going to calculate them again*/
      std::vector<Face>().swap(m_vecFaces);
      std::vector<std::vector<Edge>>().swap(m_vecEdge);
      for (UInt32 unIdxI = 0; unIdxI < m_vecPoints.size(); unIdxI++) {
         std::vector<Edge> vecEdge;
         for (UInt32 unIdxJ = 0; unIdxJ < m_vecPoints.size(); unIdxJ++) {
            Edge sEdge;
            vecEdge.push_back(sEdge);
         }
         m_vecEdge.push_back(vecEdge);
      }

      /* maybe all the points are in a plane or a line
       * find 4 points that make a solid 3D entity as a start
       * */
      std::vector<UInt32> vecFirst4Points = FindFirst4Points();
      if (vecFirst4Points.size() == 0)
      {
         std::vector<std::vector<UInt32>>().swap(m_vecIndiceFaces);
         return;
      }

      /* create 4 faces out of these 4 points*/
      for (UInt32 unIdxI = 0; unIdxI < 4; unIdxI++)
         for (UInt32 unIdxJ = unIdxI + 1; unIdxJ < 4; unIdxJ++)
            for (UInt32 unIdxK = unIdxJ + 1; unIdxK < 4; unIdxK++) {
               m_vecFaces.push_back(MakeFace(vecFirst4Points[unIdxI], 
                                           vecFirst4Points[unIdxJ],
                                           vecFirst4Points[unIdxK],
                                           vecFirst4Points[6-unIdxI-unIdxJ-unIdxK]));
      }

      UInt32 unIdxFirst4Points = 0;
      for (UInt32 unIdxPoint = 0; unIdxPoint < m_vecPoints.size(); unIdxPoint++) {
         /* jump over the 4 points that are already counted */
         if ((unIdxFirst4Points < 4) && (unIdxPoint == vecFirst4Points[unIdxFirst4Points])) {
            unIdxFirst4Points++;
            continue;
         }

         /* find all the faces with the focal point at its outside, and delete it*/
         for (UInt32 unIdxFace = 0; unIdxFace < m_vecFaces.size(); unIdxFace++) {
         //for (Face sFace : m_vecFaces) {
            Face sFace = m_vecFaces[unIdxFace];
            if (sFace.Normal.DotProduct(m_vecPoints[unIdxPoint]) > sFace.Direction) {
               m_vecEdge[sFace.P[0]][sFace.P[1]].Erase(sFace.P[2]);
               m_vecEdge[sFace.P[0]][sFace.P[2]].Erase(sFace.P[1]);
               m_vecEdge[sFace.P[1]][sFace.P[2]].Erase(sFace.P[0]);
               m_vecFaces[unIdxFace--] = m_vecFaces.back();
               m_vecFaces.resize(m_vecFaces.size() - 1);
            }
         }

         /* connect the current point with all the edges in the hull which belong to only one face */
         UInt32 unCurrentFaceNumber = m_vecFaces.size();
         /* we are pushing new faces to m_vecFaces, but only for in the old ones*/
         for (UInt32 unIdxFace = 0; unIdxFace < unCurrentFaceNumber; unIdxFace++) {
            Face sFace = m_vecFaces[unIdxFace];
            for (UInt32 unIdxA = 0; unIdxA < 3; unIdxA++) {
               for (UInt32 unIdxB = unIdxA + 1; unIdxB < 3; unIdxB++) {
                  UInt32 unIdxC = 3 - unIdxA - unIdxB;
                  if (m_vecEdge[sFace.P[unIdxA]][sFace.P[unIdxB]].Size() == 2) 
                     continue;
                  Face sNewFace = MakeFace(sFace.P[unIdxA], 
                  //m_vecFaces.push_back(MakeFace(sFace.P[unIdxA], 
                                                sFace.P[unIdxB],
                                                unIdxPoint,
                                                sFace.P[unIdxC]);
                  if ((((unIdxB - unIdxA + 3) % 3 == 0) &&
                       (sNewFace.P[2] != sFace.P[unIdxB]))
                      ||
                      (((unIdxA - unIdxB + 3) % 3 == 0) &&
                       (sNewFace.P[1] != sFace.P[unIdxB]))
                     )
                  {
                     sNewFace.Normal = -sNewFace.Normal;
                     sNewFace.Direction = -sNewFace.Direction;
                     UInt32 unTemp = sNewFace.P[1];
                     sNewFace.P[1] = sNewFace.P[2];
                     sNewFace.P[2] = unTemp;
                  }
                  m_vecFaces.push_back(sNewFace);
                  /* TODO: verify direction */
               }
            }
         }
      }

      /* copy all the data in m_vecFaces to m_vecFaces, 
       * with face direction indicated as counter-clockwise order of the points */
      for (Face SFace : m_vecFaces) {
         std::vector<UInt32> vecFace;
         vecFace.push_back(SFace.P[0]);
         vecFace.push_back(SFace.P[1]);
         vecFace.push_back(SFace.P[2]);
         m_vecIndiceFaces.push_back(vecFace);
      }
   }

   /****************************************/
   /****************************************/

   std::vector<UInt32> CConvexHull::FindFirst4Points() {
      /* TODO */
      std::vector<UInt32> temp;
      temp.push_back(0);
      temp.push_back(1);
      temp.push_back(2);
      temp.push_back(4);
      return temp;
   }

   /****************************************/
   /****************************************/

   CConvexHull::Face CConvexHull::MakeFace(UInt32 A, UInt32 B, UInt32 C, UInt32 un_inside_point) {
      m_vecEdge[A][B].Insert(C);
      m_vecEdge[A][C].Insert(B);
      m_vecEdge[B][C].Insert(A);

      Face sFace;
      sFace.P[0] = A; sFace.P[1] = B; sFace.P[2] = C;
      sFace.Normal = (m_vecPoints[B] - m_vecPoints[A]).CrossProduct(m_vecPoints[C] - m_vecPoints[A]);
      sFace.Direction = sFace.Normal.DotProduct(m_vecPoints[A]);
      if (sFace.Normal.DotProduct(m_vecPoints[un_inside_point]) > sFace.Direction) {
         sFace.Normal = -sFace.Normal;
         sFace.Direction = -sFace.Direction;
         sFace.P[1] = C;
         sFace.P[2] = B;
      }
      return sFace;
   }
}
