pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_float_h is

   procedure gsl_sort_float
     (data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_float.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float";

   procedure gsl_sort2_float
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_float";

   procedure gsl_sort_float_index
     (p : access size_t;
      data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_index";

   function gsl_sort_float_smallest
     (dest : access float;
      k : size_t;
      src : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_smallest";

   function gsl_sort_float_smallest_index
     (p : access size_t;
      k : size_t;
      src : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_smallest_index";

   function gsl_sort_float_largest
     (dest : access float;
      k : size_t;
      src : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_largest";

   function gsl_sort_float_largest_index
     (p : access size_t;
      k : size_t;
      src : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_largest_index";

end GSL.Low_Level.gsl_gsl_sort_float_h;
