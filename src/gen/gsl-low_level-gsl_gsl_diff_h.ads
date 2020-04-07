pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_diff_h is

   function gsl_diff_central
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_central";

   function gsl_diff_backward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_backward";

   function gsl_diff_forward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_forward";

end GSL.Low_Level.gsl_gsl_diff_h;
