pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_char_h;
with GSL.Low_Level.gsl_gsl_permutation_h;
with Interfaces.C.Strings;


package GSL.Low_Level.gsl_gsl_sort_vector_char_h is

   procedure gsl_sort_vector_char (v : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char)  -- /usr/include/gsl/gsl_sort_vector_char.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char";

   procedure gsl_sort_vector2_char (v1 : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char; v2 : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char)  -- /usr/include/gsl/gsl_sort_vector_char.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_char";

   function gsl_sort_vector_char_index (p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_sort_vector_char.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char_index";

   function gsl_sort_vector_char_smallest
     (dest : Interfaces.C.Strings.chars_ptr;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_sort_vector_char.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char_smallest";

   function gsl_sort_vector_char_largest
     (dest : Interfaces.C.Strings.chars_ptr;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_sort_vector_char.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char_largest";

   function gsl_sort_vector_char_smallest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_sort_vector_char.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char_smallest_index";

   function gsl_sort_vector_char_largest_index
     (p : access size_t;
      k : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_sort_vector_char.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_char_largest_index";

end GSL.Low_Level.gsl_gsl_sort_vector_char_h;
