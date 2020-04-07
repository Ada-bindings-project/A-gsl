pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_integration_h is

   type gsl_integration_workspace is record
      limit : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:41
      size : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:42
      nrmax : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:43
      i : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:44
      maximum_level : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:45
      alist : access double;  -- /usr/include/gsl/gsl_integration.h:46
      blist : access double;  -- /usr/include/gsl/gsl_integration.h:47
      rlist : access double;  -- /usr/include/gsl/gsl_integration.h:48
      elist : access double;  -- /usr/include/gsl/gsl_integration.h:49
      order : access size_t;  -- /usr/include/gsl/gsl_integration.h:50
      level : access size_t;  -- /usr/include/gsl/gsl_integration.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:53

   function gsl_integration_workspace_alloc (arg1 : size_t) return access gsl_integration_workspace  -- /usr/include/gsl/gsl_integration.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_workspace_alloc";

   procedure gsl_integration_workspace_free (w : access gsl_integration_workspace)  -- /usr/include/gsl/gsl_integration.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_workspace_free";

   type gsl_integration_qaws_table_array6804 is array (0 .. 24) of aliased double;
   type gsl_integration_qaws_table is record
      alpha : aliased double;  -- /usr/include/gsl/gsl_integration.h:66
      beta : aliased double;  -- /usr/include/gsl/gsl_integration.h:67
      mu : aliased int;  -- /usr/include/gsl/gsl_integration.h:68
      nu : aliased int;  -- /usr/include/gsl/gsl_integration.h:69
      ri : aliased gsl_integration_qaws_table_array6804;  -- /usr/include/gsl/gsl_integration.h:70
      rj : aliased gsl_integration_qaws_table_array6804;  -- /usr/include/gsl/gsl_integration.h:71
      rg : aliased gsl_integration_qaws_table_array6804;  -- /usr/include/gsl/gsl_integration.h:72
      rh : aliased gsl_integration_qaws_table_array6804;  -- /usr/include/gsl/gsl_integration.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:75

   function gsl_integration_qaws_table_alloc
     (arg1 : double;
      arg2 : double;
      arg3 : int;
      arg4 : int) return access gsl_integration_qaws_table  -- /usr/include/gsl/gsl_integration.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qaws_table_alloc";

   function gsl_integration_qaws_table_set
     (t : access gsl_integration_qaws_table;
      alpha : double;
      beta : double;
      mu : int;
      nu : int) return int  -- /usr/include/gsl/gsl_integration.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qaws_table_set";

   procedure gsl_integration_qaws_table_free (t : access gsl_integration_qaws_table)  -- /usr/include/gsl/gsl_integration.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qaws_table_free";

   type gsl_integration_qawo_enum is 
     (GSL_INTEG_COSINE,
      GSL_INTEG_SINE)
   with Convention => C;  -- /usr/include/gsl/gsl_integration.h:89

   type gsl_integration_qawo_table is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:93
      omega : aliased double;  -- /usr/include/gsl/gsl_integration.h:94
      L : aliased double;  -- /usr/include/gsl/gsl_integration.h:95
      par : aliased double;  -- /usr/include/gsl/gsl_integration.h:96
      sine : aliased gsl_integration_qawo_enum;  -- /usr/include/gsl/gsl_integration.h:97
      chebmo : access double;  -- /usr/include/gsl/gsl_integration.h:98
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:100

   function gsl_integration_qawo_table_alloc
     (arg1 : double;
      arg2 : double;
      arg3 : gsl_integration_qawo_enum;
      arg4 : size_t) return access gsl_integration_qawo_table  -- /usr/include/gsl/gsl_integration.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawo_table_alloc";

   function gsl_integration_qawo_table_set
     (t : access gsl_integration_qawo_table;
      omega : double;
      L : double;
      sine : gsl_integration_qawo_enum) return int  -- /usr/include/gsl/gsl_integration.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawo_table_set";

   function gsl_integration_qawo_table_set_length (t : access gsl_integration_qawo_table; L : double) return int  -- /usr/include/gsl/gsl_integration.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawo_table_set_length";

   procedure gsl_integration_qawo_table_free (t : access gsl_integration_qawo_table)  -- /usr/include/gsl/gsl_integration.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawo_table_free";

   --  skipped function type gsl_integration_rule

   procedure gsl_integration_qk15
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk15";

   procedure gsl_integration_qk21
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk21";

   procedure gsl_integration_qk31
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk31";

   procedure gsl_integration_qk41
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk41";

   procedure gsl_integration_qk51
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk51";

   procedure gsl_integration_qk61
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk61";

   procedure gsl_integration_qcheb
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      cheb12 : access double;
      cheb24 : access double)  -- /usr/include/gsl/gsl_integration.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qcheb";

   procedure gsl_integration_qk
     (n : int;
      xgk : access double;
      wg : access double;
      wgk : access double;
      fv1 : access double;
      fv2 : access double;
      f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      result : access double;
      abserr : access double;
      resabs : access double;
      resasc : access double)  -- /usr/include/gsl/gsl_integration.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qk";

   function gsl_integration_qng
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      epsabs : double;
      epsrel : double;
      result : access double;
      abserr : access double;
      neval : access size_t) return int  -- /usr/include/gsl/gsl_integration.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qng";

   function gsl_integration_qag
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      key : int;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qag";

   function gsl_integration_qagi
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qagi";

   function gsl_integration_qagiu
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qagiu";

   function gsl_integration_qagil
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      b : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qagil";

   function gsl_integration_qags
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qags";

   function gsl_integration_qagp
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      pts : access double;
      npts : size_t;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qagp";

   function gsl_integration_qawc
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      c : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawc";

   function gsl_integration_qaws
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      t : access gsl_integration_qaws_table;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qaws";

   function gsl_integration_qawo
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      epsabs : double;
      epsrel : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      wf : access gsl_integration_qawo_table;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawo";

   function gsl_integration_qawf
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      epsabs : double;
      limit : size_t;
      workspace : access gsl_integration_workspace;
      cycle_workspace : access gsl_integration_workspace;
      wf : access gsl_integration_qawo_table;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_integration.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_qawf";

   type gsl_integration_glfixed_table is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:254
      x : access double;  -- /usr/include/gsl/gsl_integration.h:255
      w : access double;  -- /usr/include/gsl/gsl_integration.h:256
      precomputed : aliased int;  -- /usr/include/gsl/gsl_integration.h:257
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:259

   function gsl_integration_glfixed_table_alloc (arg1 : size_t) return access gsl_integration_glfixed_table  -- /usr/include/gsl/gsl_integration.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_glfixed_table_alloc";

   procedure gsl_integration_glfixed_table_free (t : access gsl_integration_glfixed_table)  -- /usr/include/gsl/gsl_integration.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_glfixed_table_free";

   function gsl_integration_glfixed
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      t : access constant gsl_integration_glfixed_table) return double  -- /usr/include/gsl/gsl_integration.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_glfixed";

   function gsl_integration_glfixed_point
     (a : double;
      b : double;
      i : size_t;
      xi : access double;
      wi : access double;
      t : access constant gsl_integration_glfixed_table) return int  -- /usr/include/gsl/gsl_integration.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_glfixed_point";

   type gsl_integration_cquad_ival_array6872 is array (0 .. 63) of aliased double;
   type gsl_integration_cquad_ival_array6874 is array (0 .. 32) of aliased double;
   type gsl_integration_cquad_ival is record
      a : aliased double;  -- /usr/include/gsl/gsl_integration.h:288
      b : aliased double;  -- /usr/include/gsl/gsl_integration.h:288
      c : aliased gsl_integration_cquad_ival_array6872;  -- /usr/include/gsl/gsl_integration.h:289
      fx : aliased gsl_integration_cquad_ival_array6874;  -- /usr/include/gsl/gsl_integration.h:290
      igral : aliased double;  -- /usr/include/gsl/gsl_integration.h:291
      err : aliased double;  -- /usr/include/gsl/gsl_integration.h:291
      depth : aliased int;  -- /usr/include/gsl/gsl_integration.h:292
      rdepth : aliased int;  -- /usr/include/gsl/gsl_integration.h:292
      ndiv : aliased int;  -- /usr/include/gsl/gsl_integration.h:292
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:293

   type gsl_integration_cquad_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:299
      ivals : access gsl_integration_cquad_ival;  -- /usr/include/gsl/gsl_integration.h:300
      heap : access size_t;  -- /usr/include/gsl/gsl_integration.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:302

   function gsl_integration_cquad_workspace_alloc (arg1 : size_t) return access gsl_integration_cquad_workspace  -- /usr/include/gsl/gsl_integration.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_cquad_workspace_alloc";

   procedure gsl_integration_cquad_workspace_free (w : access gsl_integration_cquad_workspace)  -- /usr/include/gsl/gsl_integration.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_cquad_workspace_free";

   function gsl_integration_cquad
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      epsabs : double;
      epsrel : double;
      ws : access gsl_integration_cquad_workspace;
      result : access double;
      abserr : access double;
      nevals : access size_t) return int  -- /usr/include/gsl/gsl_integration.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_cquad";

   type gsl_integration_romberg_workspace is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:320
      work1 : access double;  -- /usr/include/gsl/gsl_integration.h:321
      work2 : access double;  -- /usr/include/gsl/gsl_integration.h:322
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:323

   function gsl_integration_romberg_alloc (arg1 : size_t) return access gsl_integration_romberg_workspace  -- /usr/include/gsl/gsl_integration.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_romberg_alloc";

   procedure gsl_integration_romberg_free (w : access gsl_integration_romberg_workspace)  -- /usr/include/gsl/gsl_integration.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_romberg_free";

   function gsl_integration_romberg
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double;
      epsabs : double;
      epsrel : double;
      result : access double;
      neval : access size_t;
      w : access gsl_integration_romberg_workspace) return int  -- /usr/include/gsl/gsl_integration.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_romberg";

   type gsl_integration_fixed_params is record
      alpha : aliased double;  -- /usr/include/gsl/gsl_integration.h:335
      beta : aliased double;  -- /usr/include/gsl/gsl_integration.h:336
      a : aliased double;  -- /usr/include/gsl/gsl_integration.h:337
      b : aliased double;  -- /usr/include/gsl/gsl_integration.h:338
      zemu : aliased double;  -- /usr/include/gsl/gsl_integration.h:339
      shft : aliased double;  -- /usr/include/gsl/gsl_integration.h:340
      slp : aliased double;  -- /usr/include/gsl/gsl_integration.h:341
      al : aliased double;  -- /usr/include/gsl/gsl_integration.h:342
      be : aliased double;  -- /usr/include/gsl/gsl_integration.h:343
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:344

   type gsl_integration_fixed_type is record
      check : access function (arg1 : size_t; arg2 : access constant gsl_integration_fixed_params) return int;  -- /usr/include/gsl/gsl_integration.h:348
      init : access function
           (arg1 : size_t;
            arg2 : access double;
            arg3 : access double;
            arg4 : access gsl_integration_fixed_params) return int;  -- /usr/include/gsl/gsl_integration.h:349
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:350

   type gsl_integration_fixed_workspace is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_integration.h:354
      weights : access double;  -- /usr/include/gsl/gsl_integration.h:355
      x : access double;  -- /usr/include/gsl/gsl_integration.h:356
      diag : access double;  -- /usr/include/gsl/gsl_integration.h:357
      subdiag : access double;  -- /usr/include/gsl/gsl_integration.h:358
      c_type : access constant gsl_integration_fixed_type;  -- /usr/include/gsl/gsl_integration.h:359
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_integration.h:360

   gsl_integration_fixed_legendre : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_legendre";

   gsl_integration_fixed_chebyshev : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_chebyshev";

   gsl_integration_fixed_gegenbauer : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_gegenbauer";

   gsl_integration_fixed_jacobi : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_jacobi";

   gsl_integration_fixed_laguerre : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_laguerre";

   gsl_integration_fixed_hermite : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_hermite";

   gsl_integration_fixed_exponential : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_exponential";

   gsl_integration_fixed_rational : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_rational";

   gsl_integration_fixed_chebyshev2 : access constant gsl_integration_fixed_type  -- /usr/include/gsl/gsl_integration.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_chebyshev2";

   function gsl_integration_fixed_alloc
     (arg1 : access constant gsl_integration_fixed_type;
      arg2 : size_t;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double) return access gsl_integration_fixed_workspace  -- /usr/include/gsl/gsl_integration.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_alloc";

   procedure gsl_integration_fixed_free (w : access gsl_integration_fixed_workspace)  -- /usr/include/gsl/gsl_integration.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_free";

   function gsl_integration_fixed_n (w : access constant gsl_integration_fixed_workspace) return size_t  -- /usr/include/gsl/gsl_integration.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_n";

   function gsl_integration_fixed_nodes (arg1 : access constant gsl_integration_fixed_workspace) return access double  -- /usr/include/gsl/gsl_integration.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_nodes";

   function gsl_integration_fixed_weights (arg1 : access constant gsl_integration_fixed_workspace) return access double  -- /usr/include/gsl/gsl_integration.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed_weights";

   function gsl_integration_fixed
     (func : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      result : access double;
      w : access constant gsl_integration_fixed_workspace) return int  -- /usr/include/gsl/gsl_integration.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_integration_fixed";

end GSL.Low_Level.gsl_gsl_integration_h;
