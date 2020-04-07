pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with System;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multifit_nlinear_h is

   type gsl_multifit_nlinear_fdtype is 
     (GSL_MULTIFIT_NLINEAR_FWDIFF,
      GSL_MULTIFIT_NLINEAR_CTRDIFF)
   with Convention => C;  -- /usr/include/gsl/gsl_multifit_nlinear.h:47

   type gsl_multifit_nlinear_fdf is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:54
      df : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:55
      fvv : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:56
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:58
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:59
      params : System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:60
      nevalf : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:61
      nevaldf : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:62
      nevalfvv : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:63
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:64

   type gsl_multifit_nlinear_trs is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlinear.h:69
      alloc : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:70
      init : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:71
      preloop : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:72
      step : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:73
      preduction : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access double;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:75
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multifit_nlinear.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:78

   type gsl_multifit_nlinear_scale is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlinear.h:83
      init : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:84
      update : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:85
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:86

   type gsl_multifit_nlinear_solver is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlinear.h:103
      alloc : access function (arg1 : size_t; arg2 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:104
      init : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:105
      presolve : access function
           (arg1 : double;
            arg2 : System.Address;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:106
      solve : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:107
      rcond : access function (arg1 : access double; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:109
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multifit_nlinear.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:111

   type gsl_multifit_nlinear_parameters is record
      trs : access constant gsl_multifit_nlinear_trs;  -- /usr/include/gsl/gsl_multifit_nlinear.h:116
      scale : access constant gsl_multifit_nlinear_scale;  -- /usr/include/gsl/gsl_multifit_nlinear.h:117
      solver : access constant gsl_multifit_nlinear_solver;  -- /usr/include/gsl/gsl_multifit_nlinear.h:118
      fdtype : aliased gsl_multifit_nlinear_fdtype;  -- /usr/include/gsl/gsl_multifit_nlinear.h:119
      factor_up : aliased double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:120
      factor_down : aliased double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:121
      avmax : aliased double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:122
      h_df : aliased double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:123
      h_fvv : aliased double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:125

   type gsl_multifit_nlinear_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlinear.h:129
      alloc : access function
           (arg1 : access constant gsl_multifit_nlinear_parameters;
            arg2 : size_t;
            arg3 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:130
      init : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multifit_nlinear_fdf;
            arg4 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg7 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:132
      iterate : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multifit_nlinear_fdf;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg7 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg8 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:135
      rcond : access function (arg1 : access double; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multifit_nlinear.h:139
      avratio : access function (arg1 : System.Address) return double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:140
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multifit_nlinear.h:141
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:142

   type gsl_multifit_nlinear_trust_state is record
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:147
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:148
      g : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:149
      J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit_nlinear.h:150
      diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:151
      sqrt_wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:152
      mu : access double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:153
      params : access constant gsl_multifit_nlinear_parameters;  -- /usr/include/gsl/gsl_multifit_nlinear.h:154
      solver_state : System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:155
      fdf : access gsl_multifit_nlinear_fdf;  -- /usr/include/gsl/gsl_multifit_nlinear.h:156
      avratio : access double;  -- /usr/include/gsl/gsl_multifit_nlinear.h:157
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:158

   type gsl_multifit_nlinear_workspace is record
      c_type : access constant gsl_multifit_nlinear_type;  -- /usr/include/gsl/gsl_multifit_nlinear.h:162
      fdf : access gsl_multifit_nlinear_fdf;  -- /usr/include/gsl/gsl_multifit_nlinear.h:163
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:164
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:165
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:166
      g : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:167
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit_nlinear.h:168
      sqrt_wts_work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:169
      sqrt_wts : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlinear.h:170
      niter : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlinear.h:171
      params : aliased gsl_multifit_nlinear_parameters;  -- /usr/include/gsl/gsl_multifit_nlinear.h:172
      state : System.Address;  -- /usr/include/gsl/gsl_multifit_nlinear.h:173
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlinear.h:174

   function gsl_multifit_nlinear_alloc
     (arg1 : access constant gsl_multifit_nlinear_type;
      arg2 : access constant gsl_multifit_nlinear_parameters;
      arg3 : size_t;
      arg4 : size_t) return access gsl_multifit_nlinear_workspace  -- /usr/include/gsl/gsl_multifit_nlinear.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_alloc";

   procedure gsl_multifit_nlinear_free (w : access gsl_multifit_nlinear_workspace)  -- /usr/include/gsl/gsl_multifit_nlinear.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_free";

   function gsl_multifit_nlinear_default_parameters return gsl_multifit_nlinear_parameters  -- /usr/include/gsl/gsl_multifit_nlinear.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_default_parameters";

   function gsl_multifit_nlinear_init
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_nlinear_fdf;
      w : access gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_init";

   function gsl_multifit_nlinear_winit
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_nlinear_fdf;
      w : access gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_winit";

   function gsl_multifit_nlinear_iterate (w : access gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_iterate";

   function gsl_multifit_nlinear_avratio (w : access constant gsl_multifit_nlinear_workspace) return double  -- /usr/include/gsl/gsl_multifit_nlinear.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_avratio";

   function gsl_multifit_nlinear_driver
     (maxiter : size_t;
      xtol : double;
      gtol : double;
      ftol : double;
      callback : access procedure
        (arg1 : size_t;
         arg2 : System.Address;
         arg3 : access constant gsl_multifit_nlinear_workspace);
      callback_params : System.Address;
      info : access int;
      w : access gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_driver";

   function gsl_multifit_nlinear_jac (arg1 : access constant gsl_multifit_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix  -- /usr/include/gsl/gsl_multifit_nlinear.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_jac";

   function gsl_multifit_nlinear_name (arg1 : access constant gsl_multifit_nlinear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit_nlinear.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_name";

   function gsl_multifit_nlinear_position (arg1 : access constant gsl_multifit_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlinear.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_position";

   function gsl_multifit_nlinear_residual (arg1 : access constant gsl_multifit_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlinear.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_residual";

   function gsl_multifit_nlinear_niter (w : access constant gsl_multifit_nlinear_workspace) return size_t  -- /usr/include/gsl/gsl_multifit_nlinear.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_niter";

   function gsl_multifit_nlinear_rcond (rcond : access double; w : access constant gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_rcond";

   function gsl_multifit_nlinear_trs_name (arg1 : access constant gsl_multifit_nlinear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit_nlinear.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_name";

   function gsl_multifit_nlinear_eval_f
     (fdf : access gsl_multifit_nlinear_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_eval_f";

   function gsl_multifit_nlinear_eval_df
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      h : double;
      fdtype : gsl_multifit_nlinear_fdtype;
      fdf : access gsl_multifit_nlinear_fdf;
      df : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_eval_df";

   function gsl_multifit_nlinear_eval_fvv
     (h : double;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_nlinear_fdf;
      yvv : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_eval_fvv";

   function gsl_multifit_nlinear_covar
     (J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      epsrel : double;
      covar : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_covar";

   function gsl_multifit_nlinear_test
     (xtol : double;
      gtol : double;
      ftol : double;
      info : access int;
      w : access constant gsl_multifit_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_test";

   function gsl_multifit_nlinear_df
     (h : double;
      fdtype : gsl_multifit_nlinear_fdtype;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_nlinear_fdf;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_df";

   function gsl_multifit_nlinear_fdfvv
     (h : double;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_nlinear_fdf;
      fvv : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlinear.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_fdfvv";

   gsl_multifit_nlinear_trust : access constant gsl_multifit_nlinear_type  -- /usr/include/gsl/gsl_multifit_nlinear.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trust";

   gsl_multifit_nlinear_trs_lm : access constant gsl_multifit_nlinear_trs  -- /usr/include/gsl/gsl_multifit_nlinear.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_lm";

   gsl_multifit_nlinear_trs_lmaccel : access constant gsl_multifit_nlinear_trs  -- /usr/include/gsl/gsl_multifit_nlinear.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_lmaccel";

   gsl_multifit_nlinear_trs_dogleg : access constant gsl_multifit_nlinear_trs  -- /usr/include/gsl/gsl_multifit_nlinear.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_dogleg";

   gsl_multifit_nlinear_trs_ddogleg : access constant gsl_multifit_nlinear_trs  -- /usr/include/gsl/gsl_multifit_nlinear.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_ddogleg";

   gsl_multifit_nlinear_trs_subspace2D : access constant gsl_multifit_nlinear_trs  -- /usr/include/gsl/gsl_multifit_nlinear.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_trs_subspace2D";

   gsl_multifit_nlinear_scale_levenberg : access constant gsl_multifit_nlinear_scale  -- /usr/include/gsl/gsl_multifit_nlinear.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_scale_levenberg";

   gsl_multifit_nlinear_scale_marquardt : access constant gsl_multifit_nlinear_scale  -- /usr/include/gsl/gsl_multifit_nlinear.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_scale_marquardt";

   gsl_multifit_nlinear_scale_more : access constant gsl_multifit_nlinear_scale  -- /usr/include/gsl/gsl_multifit_nlinear.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_scale_more";

   gsl_multifit_nlinear_solver_cholesky : access constant gsl_multifit_nlinear_solver  -- /usr/include/gsl/gsl_multifit_nlinear.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_solver_cholesky";

   gsl_multifit_nlinear_solver_qr : access constant gsl_multifit_nlinear_solver  -- /usr/include/gsl/gsl_multifit_nlinear.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_solver_qr";

   gsl_multifit_nlinear_solver_svd : access constant gsl_multifit_nlinear_solver  -- /usr/include/gsl/gsl_multifit_nlinear.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_nlinear_solver_svd";

end GSL.Low_Level.gsl_gsl_multifit_nlinear_h;
