pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with GSL.Low_Level.gsl_gsl_permutation_h;
with System;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multifit_nlin_h is

   --  arg-macro: function GSL_MULTIFIT_FN_EVAL (F, x, y)
   --    return *((F).f))(x,(F).params,(y);
   function gsl_multifit_gradient
     (J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      g : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_gradient";

   function gsl_multifit_covar
     (J : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      epsrel : double;
      covar : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_covar";

   function gsl_multifit_covar_QRPT
     (r : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      perm : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      epsrel : double;
      covar : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_covar_QRPT";

   type gsl_multifit_function_struct is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:54
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:55
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:56
      params : System.Address;  -- /usr/include/gsl/gsl_multifit_nlin.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:52

   subtype gsl_multifit_function is gsl_multifit_function_struct;  -- /usr/include/gsl/gsl_multifit_nlin.h:60

   type gsl_multifit_fsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlin.h:66
      size : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:67
      alloc : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : size_t) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:68
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multifit_function;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:69
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multifit_function;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:70
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multifit_nlin.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:73

   type gsl_multifit_fsolver is record
      c_type : access constant gsl_multifit_fsolver_type;  -- /usr/include/gsl/gsl_multifit_nlin.h:77
      c_function : access gsl_multifit_function;  -- /usr/include/gsl/gsl_multifit_nlin.h:78
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:79
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:80
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:81
      state : System.Address;  -- /usr/include/gsl/gsl_multifit_nlin.h:82
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:84

   function gsl_multifit_fsolver_alloc
     (arg1 : access constant gsl_multifit_fsolver_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_multifit_fsolver  -- /usr/include/gsl/gsl_multifit_nlin.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_alloc";

   procedure gsl_multifit_fsolver_free (s : access gsl_multifit_fsolver)  -- /usr/include/gsl/gsl_multifit_nlin.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_free";

   function gsl_multifit_fsolver_set
     (s : access gsl_multifit_fsolver;
      f : access gsl_multifit_function;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_set";

   function gsl_multifit_fsolver_iterate (s : access gsl_multifit_fsolver) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_iterate";

   function gsl_multifit_fsolver_driver
     (s : access gsl_multifit_fsolver;
      maxiter : size_t;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_driver";

   function gsl_multifit_fsolver_name (arg1 : access constant gsl_multifit_fsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit_nlin.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_name";

   function gsl_multifit_fsolver_position (arg1 : access constant gsl_multifit_fsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlin.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fsolver_position";

   type gsl_multifit_function_fdf_struct is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:110
      df : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:111
      fdf : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:112
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:113
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:114
      params : System.Address;  -- /usr/include/gsl/gsl_multifit_nlin.h:115
      nevalf : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:116
      nevaldf : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:117
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:108

   subtype gsl_multifit_function_fdf is gsl_multifit_function_fdf_struct;  -- /usr/include/gsl/gsl_multifit_nlin.h:120

   type gsl_multifit_fdfsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit_nlin.h:124
      size : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:125
      alloc : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : size_t) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:126
      set : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multifit_function_fdf;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:127
      iterate : access function
           (arg1 : System.Address;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_multifit_function_fdf;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:130
      gradient : access function (arg1 : System.Address; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:133
      jac : access function (arg1 : System.Address; arg2 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multifit_nlin.h:134
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multifit_nlin.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:137

   type gsl_multifit_fdfsolver is record
      c_type : access constant gsl_multifit_fdfsolver_type;  -- /usr/include/gsl/gsl_multifit_nlin.h:141
      fdf : access gsl_multifit_function_fdf;  -- /usr/include/gsl/gsl_multifit_nlin.h:142
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:143
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:144
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:145
      g : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:146
      sqrt_wts : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:147
      niter : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:148
      state : System.Address;  -- /usr/include/gsl/gsl_multifit_nlin.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:151

   function gsl_multifit_fdfsolver_alloc
     (arg1 : access constant gsl_multifit_fdfsolver_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_multifit_fdfsolver  -- /usr/include/gsl/gsl_multifit_nlin.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_alloc";

   function gsl_multifit_fdfsolver_set
     (s : access gsl_multifit_fdfsolver;
      fdf : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_set";

   function gsl_multifit_fdfsolver_wset
     (s : access gsl_multifit_fdfsolver;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_wset";

   function gsl_multifit_fdfsolver_iterate (s : access gsl_multifit_fdfsolver) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_iterate";

   function gsl_multifit_fdfsolver_driver
     (s : access gsl_multifit_fdfsolver;
      maxiter : size_t;
      xtol : double;
      gtol : double;
      ftol : double;
      info : access int) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_driver";

   function gsl_multifit_fdfsolver_jac (s : access gsl_multifit_fdfsolver; J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_jac";

   procedure gsl_multifit_fdfsolver_free (s : access gsl_multifit_fdfsolver)  -- /usr/include/gsl/gsl_multifit_nlin.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_free";

   function gsl_multifit_fdfsolver_name (arg1 : access constant gsl_multifit_fdfsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit_nlin.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_name";

   function gsl_multifit_fdfsolver_position (arg1 : access constant gsl_multifit_fdfsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlin.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_position";

   function gsl_multifit_fdfsolver_residual (arg1 : access constant gsl_multifit_fdfsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlin.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_residual";

   function gsl_multifit_fdfsolver_niter (s : access constant gsl_multifit_fdfsolver) return size_t  -- /usr/include/gsl/gsl_multifit_nlin.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_niter";

   function gsl_multifit_eval_wf
     (fdf : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_eval_wf";

   function gsl_multifit_eval_wdf
     (fdf : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      dy : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_eval_wdf";

   function gsl_multifit_fdfsolver_test
     (s : access constant gsl_multifit_fdfsolver;
      xtol : double;
      gtol : double;
      ftol : double;
      info : access int) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_test";

   function gsl_multifit_test_delta
     (dx : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_test_delta";

   function gsl_multifit_test_gradient (g : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; epsabs : double) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_test_gradient";

   function gsl_multifit_fdfsolver_dif_df
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_function_fdf;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_dif_df";

   function gsl_multifit_fdfsolver_dif_fdf
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      fdf : access gsl_multifit_function_fdf;
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_dif_fdf";

   type gsl_multifit_fdfridge is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:212
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit_nlin.h:213
      lambda : aliased double;  -- /usr/include/gsl/gsl_multifit_nlin.h:214
      L_diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:215
      L : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit_nlin.h:216
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:217
      wts : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit_nlin.h:218
      s : access gsl_multifit_fdfsolver;  -- /usr/include/gsl/gsl_multifit_nlin.h:219
      fdf : access gsl_multifit_function_fdf;  -- /usr/include/gsl/gsl_multifit_nlin.h:220
      fdftik : aliased gsl_multifit_function_fdf;  -- /usr/include/gsl/gsl_multifit_nlin.h:221
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit_nlin.h:222

   function gsl_multifit_fdfridge_alloc
     (arg1 : access constant gsl_multifit_fdfsolver_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_multifit_fdfridge  -- /usr/include/gsl/gsl_multifit_nlin.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_alloc";

   procedure gsl_multifit_fdfridge_free (work : access gsl_multifit_fdfridge)  -- /usr/include/gsl/gsl_multifit_nlin.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_free";

   function gsl_multifit_fdfridge_name (arg1 : access constant gsl_multifit_fdfridge) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit_nlin.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_name";

   function gsl_multifit_fdfridge_position (arg1 : access constant gsl_multifit_fdfridge) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlin.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_position";

   function gsl_multifit_fdfridge_residual (arg1 : access constant gsl_multifit_fdfridge) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multifit_nlin.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_residual";

   function gsl_multifit_fdfridge_niter (w : access constant gsl_multifit_fdfridge) return size_t  -- /usr/include/gsl/gsl_multifit_nlin.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_niter";

   function gsl_multifit_fdfridge_set
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      lambda : double) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_set";

   function gsl_multifit_fdfridge_wset
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      lambda : double;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_wset";

   function gsl_multifit_fdfridge_set2
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      lambda : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_set2";

   function gsl_multifit_fdfridge_wset2
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      lambda : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_wset2";

   function gsl_multifit_fdfridge_set3
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      L : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_set3";

   function gsl_multifit_fdfridge_wset3
     (w : access gsl_multifit_fdfridge;
      f : access gsl_multifit_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      L : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      wts : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_wset3";

   function gsl_multifit_fdfridge_iterate (w : access gsl_multifit_fdfridge) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_iterate";

   function gsl_multifit_fdfridge_driver
     (w : access gsl_multifit_fdfridge;
      maxiter : size_t;
      xtol : double;
      gtol : double;
      ftol : double;
      info : access int) return int  -- /usr/include/gsl/gsl_multifit_nlin.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfridge_driver";

   gsl_multifit_fdfsolver_lmsder : access constant gsl_multifit_fdfsolver_type  -- /usr/include/gsl/gsl_multifit_nlin.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_lmsder";

   gsl_multifit_fdfsolver_lmder : access constant gsl_multifit_fdfsolver_type  -- /usr/include/gsl/gsl_multifit_nlin.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_lmder";

   gsl_multifit_fdfsolver_lmniel : access constant gsl_multifit_fdfsolver_type  -- /usr/include/gsl/gsl_multifit_nlin.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_fdfsolver_lmniel";

end GSL.Low_Level.gsl_gsl_multifit_nlin_h;
