pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;


package GSL.Low_Level.gsl_gsl_sort_char_h is

   procedure gsl_sort_char
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_char.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char";

   procedure gsl_sort2_char
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_char.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_char";

   procedure gsl_sort_char_index
     (p : access size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_char.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char_index";

   function gsl_sort_char_smallest
     (dest : Interfaces.C.Strings.chars_ptr;
      k : size_t;
      src : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_char.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char_smallest";

   function gsl_sort_char_smallest_index
     (p : access size_t;
      k : size_t;
      src : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_char.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char_smallest_index";

   function gsl_sort_char_largest
     (dest : Interfaces.C.Strings.chars_ptr;
      k : size_t;
      src : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_char.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char_largest";

   function gsl_sort_char_largest_index
     (p : access size_t;
      k : size_t;
      src : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_char.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_char_largest_index";

end GSL.Low_Level.gsl_gsl_sort_char_h;
