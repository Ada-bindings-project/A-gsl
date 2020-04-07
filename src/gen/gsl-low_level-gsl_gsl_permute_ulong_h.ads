pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_permute_ulong_h is

   function gsl_permute_ulong
     (p : access size_t;
      data : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_ulong.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_ulong";

   function gsl_permute_ulong_inverse
     (p : access size_t;
      data : access unsigned_long;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_ulong.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_ulong_inverse";

end GSL.Low_Level.gsl_gsl_permute_ulong_h;
