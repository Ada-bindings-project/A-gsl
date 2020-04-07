pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_permute_long_double_h is

   function gsl_permute_long_double
     (p : access size_t;
      data : access long_double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_long_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long_double";

   function gsl_permute_long_double_inverse
     (p : access size_t;
      data : access long_double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long_double_inverse";

end GSL.Low_Level.gsl_gsl_permute_long_double_h;
