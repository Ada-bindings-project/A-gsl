pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_fit_h is

   function gsl_fit_linear
     (x : access double;
      xstride : size_t;
      y : access double;
      ystride : size_t;
      n : size_t;
      c0 : access double;
      c1 : access double;
      cov00 : access double;
      cov01 : access double;
      cov11 : access double;
      sumsq : access double) return int  -- /usr/include/gsl/gsl_fit.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_linear";

   function gsl_fit_wlinear
     (x : access double;
      xstride : size_t;
      w : access double;
      wstride : size_t;
      y : access double;
      ystride : size_t;
      n : size_t;
      c0 : access double;
      c1 : access double;
      cov00 : access double;
      cov01 : access double;
      cov11 : access double;
      chisq : access double) return int  -- /usr/include/gsl/gsl_fit.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_wlinear";

   function gsl_fit_linear_est
     (x : double;
      c0 : double;
      c1 : double;
      cov00 : double;
      cov01 : double;
      cov11 : double;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_fit.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_linear_est";

   function gsl_fit_mul
     (x : access double;
      xstride : size_t;
      y : access double;
      ystride : size_t;
      n : size_t;
      c1 : access double;
      cov11 : access double;
      sumsq : access double) return int  -- /usr/include/gsl/gsl_fit.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_mul";

   function gsl_fit_wmul
     (x : access double;
      xstride : size_t;
      w : access double;
      wstride : size_t;
      y : access double;
      ystride : size_t;
      n : size_t;
      c1 : access double;
      cov11 : access double;
      sumsq : access double) return int  -- /usr/include/gsl/gsl_fit.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_wmul";

   function gsl_fit_mul_est
     (x : double;
      c1 : double;
      cov11 : double;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_fit.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fit_mul_est";

end GSL.Low_Level.gsl_gsl_fit_h;
