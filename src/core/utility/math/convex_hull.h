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
 * class CConvexHull provides a base implementation of a convex hull, 
 *    It takes a std::vector of CVector3 as input, 
 *       which means the point cloud to be made into a convexhull
 *    Member function ComputeConvexHull() calculates the faces of the convex hull of these points
 *    A face is a vector of UInt32s, each UInt32 is a index to the points.
 *    Each face is made of three points, 
 *       in a couter-clockwise order looking from outside of the hull
 *    TODO: make it support more than 3 points for a face
 *
 * compute convexhull algorithm is increment convexhull algorithm
 *    http://instructor3.algorithmdesign.net/ppt/pdf1/IncrementalHull.pdf
 * code modified based on 
 *    https://gist.github.com/msg555/4963794
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

      /* m_Edge[i][j] indicates: with which point that Point i,j, and m_Edge[i][j].P make a face
       * all the faces are triangles so length of P can be 2 maximum (two faces for a edge)
       * */
      struct Edge {
         void Insert (UInt32 X) { 
            P.push_back(X); 
         }
         void Erase (UInt32 X) { 
            if ((P.size() >= 1) && (P[0] == X))
               P.erase(P.begin());
            else if ((P.size() >= 2) && (P[1] == X))
               P.erase(P.begin()+1);
         }
         UInt32 Size() { 
            return P.size(); 
         }
         std::vector<UInt32> P;
      };
      std::vector<std::vector<Edge>> m_vecEdge;

      /* a face has three points, couter-clockwise order looking from outside */
      struct Face {
         CVector3 Normal;
         Real Direction;
         UInt32 P[3];
      };
      std::vector<Face> m_vecFaces;
      Face MakeFace(UInt32 un_A, UInt32 un_B, UInt32 un_C, UInt32 un_inside_point);

   private:
      std::vector<CVector3> m_vecPoints;
      std::vector<std::vector<UInt32>> m_vecIndiceFaces;

      /* TODO: implement position, orientation ..*/
   };
}

#endif
