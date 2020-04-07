pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_math_h;
with GSL.Low_Level.gsl_gsl_mode_h;

package GSL.Low_Level.gsl_gsl_chebyshev_h is

   type gsl_cheb_series_struct is record
      c : access double;  -- /usr/include/gsl/gsl_chebyshev.h:43
      order : aliased size_t;  -- /usr/include/gsl/gsl_chebyshev.h:44
      a : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:45
      b : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:46
      order_sp : aliased size_t;  -- /usr/include/gsl/gsl_chebyshev.h:58
      f : access double;  -- /usr/include/gsl/gsl_chebyshev.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_chebyshev.h:41

   subtype gsl_cheb_series is gsl_cheb_series_struct;  -- /usr/include/gsl/gsl_chebyshev.h:64

   function gsl_cheb_alloc (arg1 : size_t) return access gsl_cheb_series  -- /usr/include/gsl/gsl_chebyshev.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_alloc";

   procedure gsl_cheb_free (cs : access gsl_cheb_series)  -- /usr/include/gsl/gsl_chebyshev.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_free";

   function gsl_cheb_init
     (cs : access gsl_cheb_series;
      func : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double) return int  -- /usr/include/gsl/gsl_chebyshev.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_init";

   function gsl_cheb_order (cs : access constant gsl_cheb_series) return size_t  -- /usr/include/gsl/gsl_chebyshev.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_order";

   function gsl_cheb_size (cs : access constant gsl_cheb_series) return size_t  -- /usr/include/gsl/gsl_chebyshev.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_size";

   function gsl_cheb_coeffs (arg1 : access constant gsl_cheb_series) return access double  -- /usr/include/gsl/gsl_chebyshev.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_coeffs";

   function gsl_cheb_eval (cs : access constant gsl_cheb_series; x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval";

   function gsl_cheb_eval_err
     (cs : access constant gsl_cheb_series;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_err";

   function gsl_cheb_eval_n
     (cs : access constant gsl_cheb_series;
      order : size_t;
      x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n";

   function gsl_cheb_eval_n_err
     (cs : access constant gsl_cheb_series;
      order : size_t;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n_err";

   function gsl_cheb_eval_mode
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_chebyshev.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode";

   function gsl_cheb_eval_mode_e
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode_e";

   function gsl_cheb_calc_deriv (deriv : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_deriv";

   function gsl_cheb_calc_integ (integ : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_integ";

end GSL.Low_Level.gsl_gsl_chebyshev_h;
