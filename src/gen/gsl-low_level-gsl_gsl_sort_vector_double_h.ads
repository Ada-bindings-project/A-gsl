pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with GSL.Low_Level.gsl_gsl_permutation_h;


package GSL.Low_Level.gsl_gsl_sort_vector_double_h is

   procedure gsl_sort_vector (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector)  -- /usr/include/gsl/gsl_sort_vector_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector";

   procedure gsl_sort_vector2 (v1 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; v2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector)  -- /usr/include/gsl/gsl_sort_vector_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2";

   function gsl_sort_vector_index (p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_sort_vector_double.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_index";

   function gsl_sort_vector_smallest
     (dest : access double;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_sort_vector_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_smallest";

   function gsl_sort_vector_largest
     (dest : access double;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_sort_vector_double.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_largest";

   function gsl_sort_vector_smallest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_sort_vector_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_smallest_index";

   function gsl_sort_vector_largest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_sort_vector_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_largest_index";

end GSL.Low_Level.gsl_gsl_sort_vector_double_h;
