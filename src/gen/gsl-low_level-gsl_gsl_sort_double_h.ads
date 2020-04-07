pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_double_h is

   procedure gsl_sort
     (data : access double;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort";

   procedure gsl_sort2
     (data1 : access double;
      stride1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2";

   procedure gsl_sort_index
     (p : access size_t;
      data : access double;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_index";

   function gsl_sort_smallest
     (dest : access double;
      k : size_t;
      src : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_smallest";

   function gsl_sort_smallest_index
     (p : access size_t;
      k : size_t;
      src : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_smallest_index";

   function gsl_sort_largest
     (dest : access double;
      k : size_t;
      src : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_largest";

   function gsl_sort_largest_index
     (p : access size_t;
      k : size_t;
      src : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_largest_index";

end GSL.Low_Level.gsl_gsl_sort_double_h;
