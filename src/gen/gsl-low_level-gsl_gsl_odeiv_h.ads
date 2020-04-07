pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_odeiv_h is

   --  arg-macro: function GSL_ODEIV_FN_EVAL (S, t, y, f)
   --    return *((S).function))(t,y,f,(S).params;
   --  arg-macro: function GSL_ODEIV_JA_EVAL (S, t, y, dfdy, dfdt)
   --    return *((S).jacobian))(t,y,dfdy,dfdt,(S).params;
   GSL_ODEIV_HADJ_INC : constant := 1;  --  /usr/include/gsl/gsl_odeiv.h:166
   GSL_ODEIV_HADJ_NIL : constant := 0;  --  /usr/include/gsl/gsl_odeiv.h:167
   GSL_ODEIV_HADJ_DEC : constant := (-1);  --  /usr/include/gsl/gsl_odeiv.h:168

   type gsl_odeiv_system is record
      c_function : access function
           (arg1 : double;
            arg2 : access double;
            arg3 : access double;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_odeiv.h:60
      jacobian : access function
           (arg1 : double;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : System.Address) return int;  -- /usr/include/gsl/gsl_odeiv.h:61
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv.h:62
      params : System.Address;  -- /usr/include/gsl/gsl_odeiv.h:63
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:65

   type gsl_odeiv_step_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_odeiv.h:80
      can_use_dydt_in : aliased int;  -- /usr/include/gsl/gsl_odeiv.h:81
      gives_exact_dydt_out : aliased int;  -- /usr/include/gsl/gsl_odeiv.h:82
      alloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/gsl/gsl_odeiv.h:83
      apply : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : double;
            arg4 : double;
            arg5 : access double;
            arg6 : access double;
            arg7 : access double;
            arg8 : access double;
            arg9 : access constant gsl_odeiv_system) return int;  -- /usr/include/gsl/gsl_odeiv.h:84
      reset : access function (arg1 : System.Address; arg2 : size_t) return int;  -- /usr/include/gsl/gsl_odeiv.h:85
      order : access function (arg1 : System.Address) return unsigned;  -- /usr/include/gsl/gsl_odeiv.h:86
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_odeiv.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:89

   type gsl_odeiv_step is record
      c_type : access constant gsl_odeiv_step_type;  -- /usr/include/gsl/gsl_odeiv.h:92
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv.h:93
      state : System.Address;  -- /usr/include/gsl/gsl_odeiv.h:94
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:96

   gsl_odeiv_step_rk2 : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk2";

   gsl_odeiv_step_rk4 : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk4";

   gsl_odeiv_step_rkf45 : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rkf45";

   gsl_odeiv_step_rkck : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rkck";

   gsl_odeiv_step_rk8pd : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk8pd";

   gsl_odeiv_step_rk2imp : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk2imp";

   gsl_odeiv_step_rk2simp : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk2simp";

   gsl_odeiv_step_rk4imp : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_rk4imp";

   gsl_odeiv_step_bsimp : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_bsimp";

   gsl_odeiv_step_gear1 : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_gear1";

   gsl_odeiv_step_gear2 : access constant gsl_odeiv_step_type  -- /usr/include/gsl/gsl_odeiv.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_gear2";

   function gsl_odeiv_step_alloc (arg1 : access constant gsl_odeiv_step_type; arg2 : size_t) return access gsl_odeiv_step  -- /usr/include/gsl/gsl_odeiv.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_alloc";

   function gsl_odeiv_step_reset (s : access gsl_odeiv_step) return int  -- /usr/include/gsl/gsl_odeiv.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_reset";

   procedure gsl_odeiv_step_free (s : access gsl_odeiv_step)  -- /usr/include/gsl/gsl_odeiv.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_free";

   function gsl_odeiv_step_name (arg1 : access constant gsl_odeiv_step) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_odeiv.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_name";

   function gsl_odeiv_step_order (s : access constant gsl_odeiv_step) return unsigned  -- /usr/include/gsl/gsl_odeiv.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_order";

   function gsl_odeiv_step_apply
     (s : access gsl_odeiv_step;
      t : double;
      h : double;
      y : access double;
      yerr : access double;
      dydt_in : access double;
      dydt_out : access double;
      dydt : access constant gsl_odeiv_system) return int  -- /usr/include/gsl/gsl_odeiv.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_step_apply";

   type gsl_odeiv_control_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_odeiv.h:149
      alloc : access function return System.Address;  -- /usr/include/gsl/gsl_odeiv.h:150
      init : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : double;
            arg4 : double;
            arg5 : double) return int;  -- /usr/include/gsl/gsl_odeiv.h:151
      hadjust : access function
           (arg1 : System.Address;
            arg2 : size_t;
            arg3 : unsigned;
            arg4 : access double;
            arg5 : access double;
            arg6 : access double;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_odeiv.h:152
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_odeiv.h:153
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:155

   type gsl_odeiv_control is record
      c_type : access constant gsl_odeiv_control_type;  -- /usr/include/gsl/gsl_odeiv.h:159
      state : System.Address;  -- /usr/include/gsl/gsl_odeiv.h:160
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:162

   function gsl_odeiv_control_alloc (arg1 : access constant gsl_odeiv_control_type) return access gsl_odeiv_control  -- /usr/include/gsl/gsl_odeiv.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_alloc";

   function gsl_odeiv_control_init
     (c : access gsl_odeiv_control;
      eps_abs : double;
      eps_rel : double;
      a_y : double;
      a_dydt : double) return int  -- /usr/include/gsl/gsl_odeiv.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_init";

   procedure gsl_odeiv_control_free (c : access gsl_odeiv_control)  -- /usr/include/gsl/gsl_odeiv.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_free";

   function gsl_odeiv_control_hadjust
     (c : access gsl_odeiv_control;
      s : access gsl_odeiv_step;
      y : access double;
      yerr : access double;
      dydt : access double;
      h : access double) return int  -- /usr/include/gsl/gsl_odeiv.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_hadjust";

   function gsl_odeiv_control_name (arg1 : access constant gsl_odeiv_control) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_odeiv.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_name";

   function gsl_odeiv_control_standard_new
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : double) return access gsl_odeiv_control  -- /usr/include/gsl/gsl_odeiv.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_standard_new";

   function gsl_odeiv_control_y_new (arg1 : double; arg2 : double) return access gsl_odeiv_control  -- /usr/include/gsl/gsl_odeiv.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_y_new";

   function gsl_odeiv_control_yp_new (arg1 : double; arg2 : double) return access gsl_odeiv_control  -- /usr/include/gsl/gsl_odeiv.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_yp_new";

   function gsl_odeiv_control_scaled_new
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : access double;
      arg6 : size_t) return access gsl_odeiv_control  -- /usr/include/gsl/gsl_odeiv.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_control_scaled_new";

   type gsl_odeiv_evolve is record
      dimension : aliased size_t;  -- /usr/include/gsl/gsl_odeiv.h:209
      y0 : access double;  -- /usr/include/gsl/gsl_odeiv.h:210
      yerr : access double;  -- /usr/include/gsl/gsl_odeiv.h:211
      dydt_in : access double;  -- /usr/include/gsl/gsl_odeiv.h:212
      dydt_out : access double;  -- /usr/include/gsl/gsl_odeiv.h:213
      last_step : aliased double;  -- /usr/include/gsl/gsl_odeiv.h:214
      count : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv.h:215
      failed_steps : aliased unsigned_long;  -- /usr/include/gsl/gsl_odeiv.h:216
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_odeiv.h:218

   function gsl_odeiv_evolve_alloc (arg1 : size_t) return access gsl_odeiv_evolve  -- /usr/include/gsl/gsl_odeiv.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_evolve_alloc";

   function gsl_odeiv_evolve_apply
     (e : access gsl_odeiv_evolve;
      con : access gsl_odeiv_control;
      step : access gsl_odeiv_step;
      dydt : access constant gsl_odeiv_system;
      t : access double;
      t1 : double;
      h : access double;
      y : access double) return int  -- /usr/include/gsl/gsl_odeiv.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_evolve_apply";

   function gsl_odeiv_evolve_reset (e : access gsl_odeiv_evolve) return int  -- /usr/include/gsl/gsl_odeiv.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_evolve_reset";

   procedure gsl_odeiv_evolve_free (e : access gsl_odeiv_evolve)  -- /usr/include/gsl/gsl_odeiv.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_odeiv_evolve_free";

end GSL.Low_Level.gsl_gsl_odeiv_h;
