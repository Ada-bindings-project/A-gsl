pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_uchar_h is

   procedure gsl_sort_uchar
     (data : access unsigned_char;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar";

   procedure gsl_sort2_uchar
     (data1 : access unsigned_char;
      stride1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_uchar";

   procedure gsl_sort_uchar_index
     (p : access size_t;
      data : access unsigned_char;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_index";

   function gsl_sort_uchar_smallest
     (dest : access unsigned_char;
      k : size_t;
      src : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_smallest";

   function gsl_sort_uchar_smallest_index
     (p : access size_t;
      k : size_t;
      src : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_smallest_index";

   function gsl_sort_uchar_largest
     (dest : access unsigned_char;
      k : size_t;
      src : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_largest";

   function gsl_sort_uchar_largest_index
     (p : access size_t;
      k : size_t;
      src : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_largest_index";

end GSL.Low_Level.gsl_gsl_sort_uchar_h;
