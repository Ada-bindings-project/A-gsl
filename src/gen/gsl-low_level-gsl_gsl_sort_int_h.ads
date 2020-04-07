pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_int_h is

   procedure gsl_sort_int
     (data : access int;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_int.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int";

   procedure gsl_sort2_int
     (data1 : access int;
      stride1 : size_t;
      data2 : access int;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_int";

   procedure gsl_sort_int_index
     (p : access size_t;
      data : access int;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_int.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int_index";

   function gsl_sort_int_smallest
     (dest : access int;
      k : size_t;
      src : access int;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_int.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int_smallest";

   function gsl_sort_int_smallest_index
     (p : access size_t;
      k : size_t;
      src : access int;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_int.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int_smallest_index";

   function gsl_sort_int_largest
     (dest : access int;
      k : size_t;
      src : access int;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_int.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int_largest";

   function gsl_sort_int_largest_index
     (p : access size_t;
      k : size_t;
      src : access int;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_int.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_int_largest_index";

end GSL.Low_Level.gsl_gsl_sort_int_h;
