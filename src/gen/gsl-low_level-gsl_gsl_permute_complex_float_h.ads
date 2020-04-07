pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_permute_complex_float_h is

   function gsl_permute_complex_float
     (p : access size_t;
      data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_complex_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_complex_float";

   function gsl_permute_complex_float_inverse
     (p : access size_t;
      data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_complex_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_complex_float_inverse";

end GSL.Low_Level.gsl_gsl_permute_complex_float_h;