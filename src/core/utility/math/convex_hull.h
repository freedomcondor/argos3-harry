/**
 * @file <argos3/core/utility/math/convex_hull.h>
 *
 * @author Weixu Zhu <zhuweixu_harry@126.com>
 */

#ifndef CONVEX_HULL_COMPUTER_H
#define CONVEX_HULL_COMPUTER_H

namespace argos {
   class CConvexHull;
}

#include <argos3/core/utility/math/vector3.h>

namespace argos {

/*
 *  class CConvexHull provides a base implementation of a convex hull, 
 *      it takes a vector of CVector3 as input,
 *      member function ComputeConvexHull() calculates the faces of the convex hull of these points
 *      faces is a vector of face,
 *      where a face is a vector of UInt32s as the indices of the points.
 *
 *  compute convexhull code based on https://gist.github.com/msg555/4963794
 */

   class CConvexHull{

   public:

      CConvexHull(const std::vector<CVector3>& vec_points) :
         m_vecPoints(vec_points) {
         ComputeConvexHull();
      }

      inline UInt32 GetFaceNumber() const {
         return m_vecFaces.size();
      }

      inline std::vector<std::vector<UInt32>> GetFaces() const {
         return m_vecIndiceFaces;
      }

   private:
      void ComputeConvexHull();
      std::vector<UInt32> FindFirst4Points();

      /* m_Edge[i][j] indicates: with which point that Point i,j, and m_Edge[i][j] make a face
       * all the faces are triangles so length of A can be 2 maximum
       * it has a meaning only when i < j 
       * */
      struct Edge {
         void Insert (UInt32 X) { P.push_back(X); }
         void Erase (UInt32 X) { 
            if ((P.size() >= 1) && (P[0] == X))
               P.erase(P.begin());
            else if ((P.size() >= 2) && (P[1] == X))
               P.erase(P.begin()+1);
         }
         UInt32 Size() { return P.size(); }
         std::vector<UInt32> P;
      };
      std::vector<std::vector<Edge>> m_vecEdge;

      struct Face {
         CVector3 Normal;
         Real Direction;
         UInt32 P[3];
      };
      std::vector<Face> m_vecFaces;
      Face MakeFace(UInt32 A, UInt32 B, UInt32 C, UInt32 un_inside_point);

   private:
      std::vector<CVector3> m_vecPoints;
      std::vector<std::vector<UInt32>> m_vecIndiceFaces;

      /* TODO: implement position, orientation ..*/
   };
}

#endif
