pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_long_double_h;
with GSL.Low_Level.gsl_gsl_permutation_h;


package GSL.Low_Level.gsl_gsl_sort_vector_long_double_h is

  -- sort/gsl_sort_vector_long_double.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Thomas Walter, Brian Gough
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 3 of the License, or (at
  -- * your option) any later version.
  -- * 
  -- * This program is distributed in the hope that it will be useful, but
  -- * WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
  --  

   procedure gsl_sort_vector_long_double (v : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double)  -- /usr/include/gsl/gsl_sort_vector_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double";

   procedure gsl_sort_vector2_long_double (v1 : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double; v2 : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double)  -- /usr/include/gsl/gsl_sort_vector_long_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_long_double";

   function gsl_sort_vector_long_double_index (p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_index";

   function gsl_sort_vector_long_double_smallest
     (dest : access long_double;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_smallest";

   function gsl_sort_vector_long_double_largest
     (dest : access long_double;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_largest";

   function gsl_sort_vector_long_double_smallest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_smallest_index";

   function gsl_sort_vector_long_double_largest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_largest_index";

end GSL.Low_Level.gsl_gsl_sort_vector_long_double_h;
