pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_vector_double_h;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;

package GSL.Low_Level.gsl_gsl_bspline_h is

   type gsl_bspline_workspace is record
      k : aliased size_t;  -- /usr/include/gsl/gsl_bspline.h:43
      km1 : aliased size_t;  -- /usr/include/gsl/gsl_bspline.h:44
      l : aliased size_t;  -- /usr/include/gsl/gsl_bspline.h:45
      nbreak : aliased size_t;  -- /usr/include/gsl/gsl_bspline.h:46
      n : aliased size_t;  -- /usr/include/gsl/gsl_bspline.h:47
      knots : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:49
      deltal : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:50
      deltar : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:51
      B : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:52
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_bspline.h:55
      dB : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_bspline.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bspline.h:57

   function gsl_bspline_alloc (arg1 : size_t; arg2 : size_t) return access gsl_bspline_workspace  -- /usr/include/gsl/gsl_bspline.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_alloc";

   procedure gsl_bspline_free (w : access gsl_bspline_workspace)  -- /usr/include/gsl/gsl_bspline.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_free";

   function gsl_bspline_ncoeffs (w : access gsl_bspline_workspace) return size_t  -- /usr/include/gsl/gsl_bspline.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_ncoeffs";

   function gsl_bspline_order (w : access gsl_bspline_workspace) return size_t  -- /usr/include/gsl/gsl_bspline.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_order";

   function gsl_bspline_nbreak (w : access gsl_bspline_workspace) return size_t  -- /usr/include/gsl/gsl_bspline.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_nbreak";

   function gsl_bspline_breakpoint (i : size_t; w : access gsl_bspline_workspace) return double  -- /usr/include/gsl/gsl_bspline.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_breakpoint";

   function gsl_bspline_greville_abscissa (i : size_t; w : access gsl_bspline_workspace) return double  -- /usr/include/gsl/gsl_bspline.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_greville_abscissa";

   function gsl_bspline_knots (breakpts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots";

   function gsl_bspline_knots_uniform
     (a : double;
      b : double;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots_uniform";

   function gsl_bspline_knots_greville
     (abscissae : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_bspline_workspace;
      abserr : access double) return int  -- /usr/include/gsl/gsl_bspline.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots_greville";

   function gsl_bspline_eval
     (x : double;
      B : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_eval";

   function gsl_bspline_eval_nonzero
     (x : double;
      Bk : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      istart : access size_t;
      iend : access size_t;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_eval_nonzero";

   function gsl_bspline_deriv_eval
     (x : double;
      nderiv : size_t;
      dB : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_deriv_eval";

   function gsl_bspline_deriv_eval_nonzero
     (x : double;
      nderiv : size_t;
      dB : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      istart : access size_t;
      iend : access size_t;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_deriv_eval_nonzero";

end GSL.Low_Level.gsl_gsl_bspline_h;
