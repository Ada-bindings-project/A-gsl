pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_deriv_h is

   function gsl_deriv_central
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_central";

   function gsl_deriv_backward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_backward";

   function gsl_deriv_forward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_forward";

end GSL.Low_Level.gsl_gsl_deriv_h;
