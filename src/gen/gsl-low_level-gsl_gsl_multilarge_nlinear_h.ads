pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with System;
with GSL.Low_Level.gsl_gsl_blas_types_h;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multilarge_nlinear_h is

   type gsl_multilarge_nlinear_fdtype is 
     (GSL_MULTILARGE_NLINEAR_FWDIFF,
      GSL_MULTILARGE_NLINEAR_CTRDIFF)
   with Convention => C;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:47

   type gsl_multilarge_nlinear_fdf is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:54
      df : access function
           (arg1 : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : System.Address;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:55
      fvv : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:58
      n : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:60
      p : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:61
      params : System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:62
      nevalf : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:63
      nevaldfu : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:64
      nevaldf2 : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:65
      nevalfvv : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:67

   type gsl_multilarge_nlinear_trs is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:72
      alloc : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:73
      init : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:74
      preloop : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:75
      step : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:76
      preduction : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access double;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:78
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multilarge_nlinear.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:81

   type gsl_multilarge_nlinear_scale is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:86
      init : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:87
      update : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:88
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:89

   type gsl_multilarge_nlinear_solver is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:104
      alloc : access function (arg1 : size_t; arg2 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:105
      init : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:106
      presolve : access function
           (arg1 : double;
            arg2 : System.Address;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:107
      solve : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:108
      rcond : access function
           (arg1 : access double;
            arg2 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:110
      covar : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg2 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:111
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multilarge_nlinear.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:113

   type gsl_multilarge_nlinear_parameters is record
      trs : access constant gsl_multilarge_nlinear_trs;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:118
      scale : access constant gsl_multilarge_nlinear_scale;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:119
      solver : access constant gsl_multilarge_nlinear_solver;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:120
      fdtype : aliased gsl_multilarge_nlinear_fdtype;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:121
      factor_up : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:122
      factor_down : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:123
      avmax : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:124
      h_df : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:125
      h_fvv : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:126
      max_iter : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:127
      tol : aliased double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:128
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:129

   type gsl_multilarge_nlinear_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:133
      alloc : access function
           (arg1 : access constant gsl_multilarge_nlinear_parameters;
            arg2 : size_t;
            arg3 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:134
      init : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multilarge_nlinear_fdf;
            arg4 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg7 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:136
      iterate : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multilarge_nlinear_fdf;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg7 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg8 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:139
      rcond : access function
           (arg1 : access double;
            arg2 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:143
      covar : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg2 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:144
      avratio : access function (arg1 : System.Address) return double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:145
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multilarge_nlinear.h:146
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:147

   type gsl_multilarge_nlinear_trust_state is record
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:152
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:153
      g : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:154
      JTJ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:155
      diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:156
      sqrt_wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:157
      mu : access double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:158
      params : access constant gsl_multilarge_nlinear_parameters;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:159
      solver_state : System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:160
      fdf : access gsl_multilarge_nlinear_fdf;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:161
      avratio : access double;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:162
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:163

   type gsl_multilarge_nlinear_workspace is record
      c_type : access constant gsl_multilarge_nlinear_type;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:167
      fdf : access gsl_multilarge_nlinear_fdf;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:168
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:169
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:170
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:171
      g : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:172
      JTJ : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:173
      sqrt_wts_work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:174
      sqrt_wts : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:175
      n : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:176
      p : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:177
      niter : aliased size_t;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:178
      params : aliased gsl_multilarge_nlinear_parameters;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:179
      state : System.Address;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:180
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge_nlinear.h:181

   function gsl_multilarge_nlinear_alloc
     (arg1 : access constant gsl_multilarge_nlinear_type;
      arg2 : access constant gsl_multilarge_nlinear_parameters;
      arg3 : size_t;
      arg4 : size_t) return access gsl_multilarge_nlinear_workspace  -- /usr/include/gsl/gsl_multilarge_nlinear.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_alloc";

   procedure gsl_multilarge_nlinear_free (w : access gsl_multilarge_nlinear_workspace)  -- /usr/include/gsl/gsl_multilarge_nlinear.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_free";

   function gsl_multilarge_nlinear_default_parameters return gsl_multilarge_nlinear_parameters  -- /usr/include/gsl/gsl_multilarge_nlinear.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_default_parameters";

   function gsl_multilarge_nlinear_init
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multilarge_nlinear_fdf;
      w : access gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_init";

   function gsl_multilarge_nlinear_winit
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multilarge_nlinear_fdf;
      w : access gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_winit";

   function gsl_multilarge_nlinear_iterate (w : access gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_iterate";

   function gsl_multilarge_nlinear_avratio (w : access constant gsl_multilarge_nlinear_workspace) return double  -- /usr/include/gsl/gsl_multilarge_nlinear.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_avratio";

   function gsl_multilarge_nlinear_rcond (rcond : access double; w : access constant gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_rcond";

   function gsl_multilarge_nlinear_covar (covar : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; w : access gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_covar";

   function gsl_multilarge_nlinear_driver
     (maxiter : size_t;
      xtol : double;
      gtol : double;
      ftol : double;
      callback : access procedure
        (arg1 : size_t;
         arg2 : System.Address;
         arg3 : access constant gsl_multilarge_nlinear_workspace);
      callback_params : System.Address;
      info : access int;
      w : access gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_driver";

   function gsl_multilarge_nlinear_name (arg1 : access constant gsl_multilarge_nlinear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multilarge_nlinear.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_name";

   function gsl_multilarge_nlinear_position (arg1 : access constant gsl_multilarge_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multilarge_nlinear.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_position";

   function gsl_multilarge_nlinear_residual (arg1 : access constant gsl_multilarge_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multilarge_nlinear.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_residual";

   function gsl_multilarge_nlinear_step (arg1 : access constant gsl_multilarge_nlinear_workspace) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multilarge_nlinear.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_step";

   function gsl_multilarge_nlinear_niter (w : access constant gsl_multilarge_nlinear_workspace) return size_t  -- /usr/include/gsl/gsl_multilarge_nlinear.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_niter";

   function gsl_multilarge_nlinear_trs_name (arg1 : access constant gsl_multilarge_nlinear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multilarge_nlinear.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_name";

   function gsl_multilarge_nlinear_eval_f
     (fdf : access gsl_multilarge_nlinear_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_eval_f";

   function gsl_multilarge_nlinear_eval_df
     (TransJ : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      u : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      h : double;
      fdtype : gsl_multilarge_nlinear_fdtype;
      fdf : access gsl_multilarge_nlinear_fdf;
      v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      JTJ : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_eval_df";

   function gsl_multilarge_nlinear_eval_fvv
     (h : double;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multilarge_nlinear_fdf;
      yvv : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_eval_fvv";

   function gsl_multilarge_nlinear_test
     (xtol : double;
      gtol : double;
      ftol : double;
      info : access int;
      w : access constant gsl_multilarge_nlinear_workspace) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_test";

   function gsl_multilarge_nlinear_df
     (h : double;
      fdtype : gsl_multilarge_nlinear_fdtype;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multilarge_nlinear_fdf;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_df";

   function gsl_multilarge_nlinear_fdfvv
     (h : double;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      swts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multilarge_nlinear_fdf;
      fvv : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge_nlinear.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_fdfvv";

   gsl_multilarge_nlinear_trust : access constant gsl_multilarge_nlinear_type  -- /usr/include/gsl/gsl_multilarge_nlinear.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trust";

   gsl_multilarge_nlinear_trs_lm : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_lm";

   gsl_multilarge_nlinear_trs_lmaccel : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_lmaccel";

   gsl_multilarge_nlinear_trs_dogleg : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_dogleg";

   gsl_multilarge_nlinear_trs_ddogleg : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_ddogleg";

   gsl_multilarge_nlinear_trs_subspace2D : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_subspace2D";

   gsl_multilarge_nlinear_trs_cgst : access constant gsl_multilarge_nlinear_trs  -- /usr/include/gsl/gsl_multilarge_nlinear.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_trs_cgst";

   gsl_multilarge_nlinear_scale_levenberg : access constant gsl_multilarge_nlinear_scale  -- /usr/include/gsl/gsl_multilarge_nlinear.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_scale_levenberg";

   gsl_multilarge_nlinear_scale_marquardt : access constant gsl_multilarge_nlinear_scale  -- /usr/include/gsl/gsl_multilarge_nlinear.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_scale_marquardt";

   gsl_multilarge_nlinear_scale_more : access constant gsl_multilarge_nlinear_scale  -- /usr/include/gsl/gsl_multilarge_nlinear.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_scale_more";

   gsl_multilarge_nlinear_solver_cholesky : access constant gsl_multilarge_nlinear_solver  -- /usr/include/gsl/gsl_multilarge_nlinear.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_solver_cholesky";

   gsl_multilarge_nlinear_solver_none : access constant gsl_multilarge_nlinear_solver  -- /usr/include/gsl/gsl_multilarge_nlinear.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_nlinear_solver_none";

end GSL.Low_Level.gsl_gsl_multilarge_nlinear_h;
