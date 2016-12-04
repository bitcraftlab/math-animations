(* ::Package:: *)

(* ::Chapter:: *)
(*Central Quadrics in Mathematica*)


(* ::Section:: *)
(*Central Quadrics*)


params = {
  {0, +6}, {+1, +5}, {+2, +4}, {+3, +3}, {+3, +2}, {+3, +1}, {+3, 0}, {+3, -2}, {+3, -4}, {+3, -6}, {+2, -6}, {+1, -6},
  {0, -6}, {-1, -5}, {-2, -4}, {-3, -3}, {-3, -2}, {-3, -1}, {-3, 0}, {-3, +2}, {-3, +4}, {-3, +6}, {-2, +6}, {-1, +6}
} ;


Function[{a, b, c},
  RegionPlot3D[a x^2 + b y^2 + c z^2 > 4/11 (a + b + c), {x, -1, 1}, {y, -1, 1}, {z, -1, 1},
  Mesh->3, Axes->False, PlotRangePadding->0, ViewPoint->{+1, +1, -1} * 1000, ViewVertical->{0, 0, -1}]
] @@@ params[[All,{1, 1, 2}]] //
GraphicsRow[#, Spacings->5, ImageSize->Full]&


(* ::Section:: *)
(*Parameter Space*)


Show[
  Function[{a, b, c, u, v, w},
    RegionPlot3D[a (x - 2 u)^2 + b (y - 2 v)^2 + c (z - 2 w)^2 > 4/11 (a + b + c) ,{x, 2 u - 1, 2 u + 1},{y, 2 v - 1, 2 v + 1},{z, 2 w - 1, 2 w + 1},
    Mesh->3, ViewPoint->{+1, +1, -1} * 1000, ViewVertical->{0, 0, -1}]
  ] @@@ params[[All,{1, 1, 2, 1, 2, 1}]],
  PlotRange->13
]


(* ::Section:: *)
(*Animated Gif*)


SetDirectory[NotebookDirectory[]];
Function[{a, b, c},
      RegionPlot3D[a x^2 + b y^2 + c z^2 > 4/11 (a + b + c) , {x, -1, 1}, {y, -1, 1}, {z, -1, 1},
        Mesh -> 3, Axes -> False, PlotRangePadding -> 0, ViewPoint -> {+1, +1, -1} * 1000, ViewVertical -> {0,0,-1}]
      ] @@@ params[[All, {1, 1, 2}]] // Export["quadrics.gif", #] &
