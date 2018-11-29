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
      /* clean m_SEdge and m_vecFaces, because we are going to re-calculate everything */
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
       * so find 4 points that make a solid 3D entity as a start
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

         /* find all the faces with the focal point at its outside, and delete it */
         for (UInt32 unIdxFace = 0; unIdxFace < m_vecFaces.size(); unIdxFace++) {
            Face sFace = m_vecFaces[unIdxFace];
            if (sFace.Normal.DotProduct(m_vecPoints[unIdxPoint]) > sFace.Direction) {
               m_vecEdge[sFace.P[0]][sFace.P[1]].Erase(sFace.P[2]);
               m_vecEdge[sFace.P[1]][sFace.P[0]].Erase(sFace.P[2]);
               m_vecEdge[sFace.P[0]][sFace.P[2]].Erase(sFace.P[1]);
               m_vecEdge[sFace.P[2]][sFace.P[0]].Erase(sFace.P[1]);
               m_vecEdge[sFace.P[1]][sFace.P[2]].Erase(sFace.P[0]);
               m_vecEdge[sFace.P[2]][sFace.P[1]].Erase(sFace.P[0]);
               //m_vecFaces[unIdxFace--] = m_vecFaces.back();
               //m_vecFaces.resize(m_vecFaces.size() - 1);
               m_vecFaces[unIdxFace] = m_vecFaces.back();
               m_vecFaces.erase(m_vecFaces.end());
               unIdxFace--;
            }
         }

         /* connect the focal point with all the calculated edges which belong to only one face */
         UInt32 unCurrentFaceNumber = m_vecFaces.size();
         /* we are pushing new faces to m_vecFaces, but only loop in the old ones */
         for (UInt32 unIdxFace = 0; unIdxFace < unCurrentFaceNumber; unIdxFace++) {
            Face sFace = m_vecFaces[unIdxFace];
            for (UInt32 unIdxA = 0; unIdxA < 3; unIdxA++) {
               for (UInt32 unIdxB = unIdxA + 1; unIdxB < 3; unIdxB++) {
                  if (m_vecEdge[sFace.P[unIdxA]][sFace.P[unIdxB]].Size() == 2)
                     continue;
                  UInt32 unIdxC = 3 - unIdxA - unIdxB;
                  Face sNewFace = MakeFace(sFace.P[unIdxA], 
                                           sFace.P[unIdxB],
                                           unIdxPoint,
                                           sFace.P[unIdxC]);
                  /* verify direction, the direction should be consistent with the focal face (sFace)
                   * the right direction is told by the order of unIdxA and unIdxB
                   * for example, if unIdxA and unIdxB are 0 and 1, then in the new face, the
                   * order of point sFace.P[unIdxA] and sFace.P[unIdxB] should be reversed
                   * */
                  if ((((unIdxB - unIdxA + 3) % 3 == 1) &&
                       (sNewFace.P[2] != sFace.P[unIdxB])) ||
                      (((unIdxA - unIdxB + 3) % 3 == 1) &&
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
      std::vector<UInt32> vecFirst4Points;
      for (UInt32 unI = 0; unI < m_vecPoints.size(); unI++) {
         for (UInt32 unJ = unI + 1; unJ < m_vecPoints.size(); unJ++) {
            for (UInt32 unK = unJ + 1; unK < m_vecPoints.size(); unK++) {
               for (UInt32 unL = unK + 1; unL < m_vecPoints.size(); unL++) {
                  /* calculate normal vector with the first 3 points */
                  CVector3 cNormal = (m_vecPoints[unI] - m_vecPoints[unJ]).CrossProduct(
                                      m_vecPoints[unI] - m_vecPoints[unK]);
                  /* normal is 0 means this 3 points are in a line */
                  /* TODO: cNormal.Length() == 0 is comparing Real with 0, for now it works
                   * compare it with 0.0000001 if necessary
                   * */
                  if (cNormal.Length() == 0)
                     continue;
                  /* whether the 4th point is in the same plane */
                  if (cNormal.DotProduct(m_vecPoints[unL] - m_vecPoints[unI]) == 0)
                     continue;
                  vecFirst4Points.push_back(unI);
                  vecFirst4Points.push_back(unJ);
                  vecFirst4Points.push_back(unK);
                  vecFirst4Points.push_back(unL);
                  return vecFirst4Points;
               }
            }
         }
      }
      /* cannot find 4 points that make valid 3D body, return empty vector */
      return vecFirst4Points;
   }

   /****************************************/
   /****************************************/

   CConvexHull::Face CConvexHull::MakeFace(UInt32 un_A, 
                                           UInt32 un_B, 
                                           UInt32 un_C, 
                                           UInt32 un_inside_point) {
      m_vecEdge[un_A][un_B].Insert(un_C);
      m_vecEdge[un_B][un_A].Insert(un_C);
      m_vecEdge[un_A][un_C].Insert(un_B);
      m_vecEdge[un_C][un_A].Insert(un_B);
      m_vecEdge[un_B][un_C].Insert(un_A);
      m_vecEdge[un_C][un_B].Insert(un_A);

      Face sFace;
      sFace.P[0] = un_A; sFace.P[1] = un_B; sFace.P[2] = un_C;
      sFace.Normal = (m_vecPoints[un_B] - m_vecPoints[un_A]).CrossProduct(
                      m_vecPoints[un_C] - m_vecPoints[un_A]);
      sFace.Direction = sFace.Normal.DotProduct(m_vecPoints[un_A]);
      if (sFace.Normal.DotProduct(m_vecPoints[un_inside_point]) > sFace.Direction) {
         sFace.Normal = -sFace.Normal;
         sFace.Direction = -sFace.Direction;
         sFace.P[1] = un_C;
         sFace.P[2] = un_B;
      }
      return sFace;
   }
}
