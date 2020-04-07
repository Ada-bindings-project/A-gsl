pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_odeiv2_h is

   type gsl_odeiv2_system is record
      c_function : access function
           (arg1 : double;
            arg2 : access double;
            arg3 : access double;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_odeiv2.h:58
      jacobian : access function
           (arg1 : double;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : System.Address) return int;  -- /usr/include/gsl/gsl_odeiv2.h:59
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv2.h:61
      params : System.Address;  -- /usr/include/gsl/gsl_odeiv2.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:64

   type gsl_odeiv2_step_struct;
   subtype gsl_odeiv2_step is gsl_odeiv2_step_struct;  -- /usr/include/gsl/gsl_odeiv2.h:73

   type gsl_odeiv2_control_struct;
   subtype gsl_odeiv2_control is gsl_odeiv2_control_struct;  -- /usr/include/gsl/gsl_odeiv2.h:74

   type gsl_odeiv2_evolve_struct;
   subtype gsl_odeiv2_evolve is gsl_odeiv2_evolve_struct;  -- /usr/include/gsl/gsl_odeiv2.h:75

   type gsl_odeiv2_driver_struct;
   subtype gsl_odeiv2_driver is gsl_odeiv2_driver_struct;  -- /usr/include/gsl/gsl_odeiv2.h:76

   type gsl_odeiv2_step_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_odeiv2.h:87
      can_use_dydt_in : aliased int;  -- /usr/include/gsl/gsl_odeiv2.h:88
      gives_exact_dydt_out : aliased int;  -- /usr/include/gsl/gsl_odeiv2.h:89
      alloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/gsl/gsl_odeiv2.h:90
      apply : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : double;
            arg4 : double;
            arg5 : access double;
            arg6 : access double;
            arg7 : access double;
            arg8 : access double;
            arg9 : access constant gsl_odeiv2_system) return int;  -- /usr/include/gsl/gsl_odeiv2.h:91
      set_driver : access function (arg1 : System.Address; arg2 : access constant gsl_odeiv2_driver) return int;  -- /usr/include/gsl/gsl_odeiv2.h:94
      reset : access function (arg1 : System.Address; arg2 : size_t) return int;  -- /usr/include/gsl/gsl_odeiv2.h:95
      order : access function (arg1 : System.Address) return unsigned;  -- /usr/include/gsl/gsl_odeiv2.h:96
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_odeiv2.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:99

   type gsl_odeiv2_step_struct is record
      c_type : access constant gsl_odeiv2_step_type;  -- /usr/include/gsl/gsl_odeiv2.h:103
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv2.h:104
      state : System.Address;  -- /usr/include/gsl/gsl_odeiv2.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:101

   gsl_odeiv2_step_rk2 : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk2";

   gsl_odeiv2_step_rk4 : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk4";

   gsl_odeiv2_step_rkf45 : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rkf45";

   gsl_odeiv2_step_rkck : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rkck";

   gsl_odeiv2_step_rk8pd : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk8pd";

   gsl_odeiv2_step_rk2imp : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk2imp";

   gsl_odeiv2_step_rk4imp : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk4imp";

   gsl_odeiv2_step_bsimp : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_bsimp";

   gsl_odeiv2_step_rk1imp : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_rk1imp";

   gsl_odeiv2_step_msadams : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_msadams";

   gsl_odeiv2_step_msbdf : access constant gsl_odeiv2_step_type  -- /usr/include/gsl/gsl_odeiv2.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_msbdf";

   function gsl_odeiv2_step_alloc (arg1 : access constant gsl_odeiv2_step_type; arg2 : size_t) return access gsl_odeiv2_step  -- /usr/include/gsl/gsl_odeiv2.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_alloc";

   function gsl_odeiv2_step_reset (s : access gsl_odeiv2_step) return int  -- /usr/include/gsl/gsl_odeiv2.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_reset";

   procedure gsl_odeiv2_step_free (s : access gsl_odeiv2_step)  -- /usr/include/gsl/gsl_odeiv2.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_free";

   function gsl_odeiv2_step_name (arg1 : access constant gsl_odeiv2_step) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_odeiv2.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_name";

   function gsl_odeiv2_step_order (s : access constant gsl_odeiv2_step) return unsigned  -- /usr/include/gsl/gsl_odeiv2.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_order";

   function gsl_odeiv2_step_apply
     (s : access gsl_odeiv2_step;
      t : double;
      h : double;
      y : access double;
      yerr : access double;
      dydt_in : access double;
      dydt_out : access double;
      dydt : access constant gsl_odeiv2_system) return int  -- /usr/include/gsl/gsl_odeiv2.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_apply";

   function gsl_odeiv2_step_set_driver (s : access gsl_odeiv2_step; d : access constant gsl_odeiv2_driver) return int  -- /usr/include/gsl/gsl_odeiv2.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_step_set_driver";

   type gsl_odeiv2_control_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_odeiv2.h:140
      alloc : access function return System.Address;  -- /usr/include/gsl/gsl_odeiv2.h:141
      init : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : double;
            arg4 : double;
            arg5 : double) return int;  -- /usr/include/gsl/gsl_odeiv2.h:142
      hadjust : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : unsigned;
            arg4 : access double;
            arg5 : access double;
            arg6 : access double;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_odeiv2.h:144
      errlevel : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : double;
            arg4 : double;
            arg5 : size_t;
            arg6 : access double) return int;  -- /usr/include/gsl/gsl_odeiv2.h:146
      set_driver : access function (arg1 : System.Address; arg2 : access constant gsl_odeiv2_driver) return int;  -- /usr/include/gsl/gsl_odeiv2.h:148
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_odeiv2.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:151

   type gsl_odeiv2_control_struct is record
      c_type : access constant gsl_odeiv2_control_type;  -- /usr/include/gsl/gsl_odeiv2.h:155
      state : System.Address;  -- /usr/include/gsl/gsl_odeiv2.h:156
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:153

   function gsl_odeiv2_control_alloc (arg1 : access constant gsl_odeiv2_control_type) return access gsl_odeiv2_control  -- /usr/include/gsl/gsl_odeiv2.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_alloc";

   function gsl_odeiv2_control_init
     (c : access gsl_odeiv2_control;
      eps_abs : double;
      eps_rel : double;
      a_y : double;
      a_dydt : double) return int  -- /usr/include/gsl/gsl_odeiv2.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_init";

   procedure gsl_odeiv2_control_free (c : access gsl_odeiv2_control)  -- /usr/include/gsl/gsl_odeiv2.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_free";

   function gsl_odeiv2_control_hadjust
     (c : access gsl_odeiv2_control;
      s : access gsl_odeiv2_step;
      y : access double;
      yerr : access double;
      dydt : access double;
      h : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_hadjust";

   function gsl_odeiv2_control_name (arg1 : access constant gsl_odeiv2_control) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_odeiv2.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_name";

   function gsl_odeiv2_control_errlevel
     (c : access gsl_odeiv2_control;
      y : double;
      dydt : double;
      h : double;
      ind : size_t;
      errlev : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_errlevel";

   function gsl_odeiv2_control_set_driver (c : access gsl_odeiv2_control; d : access constant gsl_odeiv2_driver) return int  -- /usr/include/gsl/gsl_odeiv2.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_set_driver";

   function gsl_odeiv2_control_standard_new
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : double) return access gsl_odeiv2_control  -- /usr/include/gsl/gsl_odeiv2.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_standard_new";

   function gsl_odeiv2_control_y_new (arg1 : double; arg2 : double) return access gsl_odeiv2_control  -- /usr/include/gsl/gsl_odeiv2.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_y_new";

   function gsl_odeiv2_control_yp_new (arg1 : double; arg2 : double) return access gsl_odeiv2_control  -- /usr/include/gsl/gsl_odeiv2.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_yp_new";

   function gsl_odeiv2_control_scaled_new
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : access double;
      arg6 : size_t) return access gsl_odeiv2_control  -- /usr/include/gsl/gsl_odeiv2.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_control_scaled_new";

   type gsl_odeiv2_evolve_struct is record
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv2.h:234
      y0 : access double;  -- /usr/include/gsl/gsl_odeiv2.h:235
      yerr : access double;  -- /usr/include/gsl/gsl_odeiv2.h:236
      dydt_in : access double;  -- /usr/include/gsl/gsl_odeiv2.h:237
      dydt_out : access double;  -- /usr/include/gsl/gsl_odeiv2.h:238
      last_step : aliased double;  -- /usr/include/gsl/gsl_odeiv2.h:239
      count : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv2.h:240
      failed_steps : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv2.h:241
      driver : access constant gsl_odeiv2_driver;  -- /usr/include/gsl/gsl_odeiv2.h:242
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:232

   function gsl_odeiv2_evolve_alloc (arg1 : size_t) return access gsl_odeiv2_evolve  -- /usr/include/gsl/gsl_odeiv2.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_alloc";

   function gsl_odeiv2_evolve_apply
     (e : access gsl_odeiv2_evolve;
      con : access gsl_odeiv2_control;
      step : access gsl_odeiv2_step;
      dydt : access constant gsl_odeiv2_system;
      t : access double;
      t1 : double;
      h : access double;
      y : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_apply";

   function gsl_odeiv2_evolve_apply_fixed_step
     (e : access gsl_odeiv2_evolve;
      con : access gsl_odeiv2_control;
      step : access gsl_odeiv2_step;
      dydt : access constant gsl_odeiv2_system;
      t : access double;
      h0 : double;
      y : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_apply_fixed_step";

   function gsl_odeiv2_evolve_reset (e : access gsl_odeiv2_evolve) return int  -- /usr/include/gsl/gsl_odeiv2.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_reset";

   procedure gsl_odeiv2_evolve_free (e : access gsl_odeiv2_evolve)  -- /usr/include/gsl/gsl_odeiv2.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_free";

   function gsl_odeiv2_evolve_set_driver (e : access gsl_odeiv2_evolve; d : access constant gsl_odeiv2_driver) return int  -- /usr/include/gsl/gsl_odeiv2.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_evolve_set_driver";

   type gsl_odeiv2_driver_struct is record
      sys : access constant gsl_odeiv2_system;  -- /usr/include/gsl/gsl_odeiv2.h:271
      s : access gsl_odeiv2_step;  -- /usr/include/gsl/gsl_odeiv2.h:272
      c : access gsl_odeiv2_control;  -- /usr/include/gsl/gsl_odeiv2.h:273
      e : access gsl_odeiv2_evolve;  -- /usr/include/gsl/gsl_odeiv2.h:274
      h : aliased double;  -- /usr/include/gsl/gsl_odeiv2.h:275
      hmin : aliased double;  -- /usr/include/gsl/gsl_odeiv2.h:276
      hmax : aliased double;  -- /usr/include/gsl/gsl_odeiv2.h:277
      n : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv2.h:278
      nmax : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv2.h:279
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv2.h:269

   function gsl_odeiv2_driver_alloc_y_new
     (arg1 : access constant gsl_odeiv2_system;
      arg2 : access constant gsl_odeiv2_step_type;
      arg3 : double;
      arg4 : double;
      arg5 : double) return access gsl_odeiv2_driver  -- /usr/include/gsl/gsl_odeiv2.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_alloc_y_new";

   function gsl_odeiv2_driver_alloc_yp_new
     (arg1 : access constant gsl_odeiv2_system;
      arg2 : access constant gsl_odeiv2_step_type;
      arg3 : double;
      arg4 : double;
      arg5 : double) return access gsl_odeiv2_driver  -- /usr/include/gsl/gsl_odeiv2.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_alloc_yp_new";

   function gsl_odeiv2_driver_alloc_scaled_new
     (arg1 : access constant gsl_odeiv2_system;
      arg2 : access constant gsl_odeiv2_step_type;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double;
      arg8 : access double) return access gsl_odeiv2_driver  -- /usr/include/gsl/gsl_odeiv2.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_alloc_scaled_new";

   function gsl_odeiv2_driver_alloc_standard_new
     (arg1 : access constant gsl_odeiv2_system;
      arg2 : access constant gsl_odeiv2_step_type;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double) return access gsl_odeiv2_driver  -- /usr/include/gsl/gsl_odeiv2.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_alloc_standard_new";

   function gsl_odeiv2_driver_set_hmin (d : access gsl_odeiv2_driver; hmin : double) return int  -- /usr/include/gsl/gsl_odeiv2.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_set_hmin";

   function gsl_odeiv2_driver_set_hmax (d : access gsl_odeiv2_driver; hmax : double) return int  -- /usr/include/gsl/gsl_odeiv2.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_set_hmax";

   function gsl_odeiv2_driver_set_nmax (d : access gsl_odeiv2_driver; nmax : unsigned_long) return int  -- /usr/include/gsl/gsl_odeiv2.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_set_nmax";

   function gsl_odeiv2_driver_apply
     (d : access gsl_odeiv2_driver;
      t : access double;
      t1 : double;
      y : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_apply";

   function gsl_odeiv2_driver_apply_fixed_step
     (d : access gsl_odeiv2_driver;
      t : access double;
      h : double;
      n : unsigned_long;
      y : access double) return int  -- /usr/include/gsl/gsl_odeiv2.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_apply_fixed_step";

   function gsl_odeiv2_driver_reset (d : access gsl_odeiv2_driver) return int  -- /usr/include/gsl/gsl_odeiv2.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_reset";

   function gsl_odeiv2_driver_reset_hstart (d : access gsl_odeiv2_driver; hstart : double) return int  -- /usr/include/gsl/gsl_odeiv2.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_reset_hstart";

   procedure gsl_odeiv2_driver_free (state : access gsl_odeiv2_driver)  -- /usr/include/gsl/gsl_odeiv2.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv2_driver_free";

end GSL.Low_Level.gsl_gsl_odeiv2_h;
