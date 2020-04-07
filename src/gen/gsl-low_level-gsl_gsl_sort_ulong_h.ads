pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_ulong_h is

   procedure gsl_sort_ulong
     (data : access unsigned_long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong";

   procedure gsl_sort2_ulong
     (data1 : access unsigned_long;
      stride1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_ulong";

   procedure gsl_sort_ulong_index
     (p : access size_t;
      data : access unsigned_long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_index";

   function gsl_sort_ulong_smallest
     (dest : access unsigned_long;
      k : size_t;
      src : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_smallest";

   function gsl_sort_ulong_smallest_index
     (p : access size_t;
      k : size_t;
      src : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_smallest_index";

   function gsl_sort_ulong_largest
     (dest : access unsigned_long;
      k : size_t;
      src : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_largest";

   function gsl_sort_ulong_largest_index
     (p : access size_t;
      k : size_t;
      src : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_largest_index";

end GSL.Low_Level.gsl_gsl_sort_ulong_h;
