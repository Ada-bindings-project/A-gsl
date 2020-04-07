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

  -- ode-initval/gsl_odeiv.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Gerard Jungman
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 3 of the License, or (at
  -- * your option) any later version.
  -- * 
  -- * This program is distributed in the hope that it will be useful, but
  -- * WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
  --  

  -- Author:  G. Jungman
  --  

  -- Description of a system of ODEs.
  -- *
  -- * y' = f(t,y) = dydt(t, y)
  -- *
  -- * The system is specified by giving the right-hand-side
  -- * of the equation and possibly a jacobian function.
  -- *
  -- * Some methods require the jacobian function, which calculates
  -- * the matrix dfdy and the vector dfdt. The matrix dfdy conforms
  -- * to the GSL standard, being a continuous range of floating point
  -- * values, in row-order.
  -- *
  -- * As with GSL function objects, user-supplied parameter
  -- * data is also present. 
  --  

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

  -- General stepper object.
  -- *
  -- * Opaque object for stepping an ODE system from t to t+h.
  -- * In general the object has some state which facilitates
  -- * iterating the stepping operation.
  --  

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

  -- Available stepper types.
  -- *
  -- * rk2    : embedded 2nd(3rd) Runge-Kutta
  -- * rk4    : 4th order (classical) Runge-Kutta
  -- * rkck   : embedded 4th(5th) Runge-Kutta, Cash-Karp
  -- * rk8pd  : embedded 8th(9th) Runge-Kutta, Prince-Dormand
  -- * rk2imp : implicit 2nd order Runge-Kutta at Gaussian points
  -- * rk4imp : implicit 4th order Runge-Kutta at Gaussian points
  -- * gear1  : M=1 implicit Gear method
  -- * gear2  : M=2 implicit Gear method
  --  

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

  -- Constructor for specialized stepper objects.
  --  

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

  -- General stepper object methods.
  --  

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

  -- General step size control object.
  -- *
  -- * The hadjust() method controls the adjustment of
  -- * step size given the result of a step and the error.
  -- * Valid hadjust() methods must return one of the codes below.
  -- *
  -- * The general data can be used by specializations
  -- * to store state and control their heuristics.
  --  

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

  -- Possible return values for an hadjust() evolution method.
  --  

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

  -- Available control object constructors.
  -- *
  -- * The standard control object is a four parameter heuristic
  -- * defined as follows:
  -- *    D0 = eps_abs + eps_rel * (a_y |y| + a_dydt h |y'|)
  -- *    D1 = |yerr|
  -- *    q  = consistency order of method (q=4 for 4(5) embedded RK)
  -- *    S  = safety factor (0.9 say)
  -- *
  -- *                      /  (D0/D1)^(1/(q+1))  D0 >= D1
  -- *    h_NEW = S h_OLD * |
  -- *                      \  (D0/D1)^(1/q)      D0 < D1
  -- *
  -- * This encompasses all the standard error scaling methods.
  -- *
  -- * The y method is the standard method with a_y=1, a_dydt=0.
  -- * The yp method is the standard method with a_y=0, a_dydt=1.
  --  

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

  -- This controller computes errors using different absolute errors for
  -- * each component
  -- *
  -- *    D0 = eps_abs * scale_abs[i] + eps_rel * (a_y |y| + a_dydt h |y'|)
  --  

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

  -- General evolution object.
  --  

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

  -- Evolution object methods.
  --  

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
