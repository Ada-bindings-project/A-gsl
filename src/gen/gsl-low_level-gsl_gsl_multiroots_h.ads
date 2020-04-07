pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with System;

limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multiroots_h is

   --  arg-macro: function GSL_MULTIROOT_FN_EVAL (F, x, y)
   --    return *((F).f))(x,(F).params,(y);
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_F (F, x, y)
   --    return (*((F).f))(x,(F).params,(y));
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_DF (F, x, dy)
   --    return (*((F).df))(x,(F).params,(dy));
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_F_DF (F, x, y, dy)
   --    return (*((F).fdf))(x,(F).params,(y),(dy));
  -- multiroots/gsl_multiroots.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Brian Gough
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

  -- Definition of vector-valued functions with parameters based on gsl_vector  
   type gsl_multiroot_function_struct is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:45
      n : aliased size_t;  -- /usr/include/gsl/gsl_multiroots.h:46
      params : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:43

   subtype gsl_multiroot_function is gsl_multiroot_function_struct;  -- /usr/include/gsl/gsl_multiroots.h:50

   function gsl_multiroot_fdjacobian
     (FF : access gsl_multiroot_function;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      epsrel : double;
      jacobian : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multiroots.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdjacobian";

   type gsl_multiroot_fsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multiroots.h:61
      size : aliased size_t;  -- /usr/include/gsl/gsl_multiroots.h:62
      alloc : access function (arg1 : System.Address; arg2 : size_t) return int;  -- /usr/include/gsl/gsl_multiroots.h:63
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:64
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:65
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multiroots.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:68

   type gsl_multiroot_fsolver is record
      c_type : access constant gsl_multiroot_fsolver_type;  -- /usr/include/gsl/gsl_multiroots.h:72
      c_function : access gsl_multiroot_function;  -- /usr/include/gsl/gsl_multiroots.h:73
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:74
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:75
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:76
      state : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:79

   function gsl_multiroot_fsolver_alloc (arg1 : access constant gsl_multiroot_fsolver_type; arg2 : size_t) return access gsl_multiroot_fsolver  -- /usr/include/gsl/gsl_multiroots.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_alloc";

   procedure gsl_multiroot_fsolver_free (s : access gsl_multiroot_fsolver)  -- /usr/include/gsl/gsl_multiroots.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_free";

   function gsl_multiroot_fsolver_set
     (s : access gsl_multiroot_fsolver;
      f : access gsl_multiroot_function;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multiroots.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_set";

   function gsl_multiroot_fsolver_iterate (s : access gsl_multiroot_fsolver) return int  -- /usr/include/gsl/gsl_multiroots.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_iterate";

   function gsl_multiroot_fsolver_name (arg1 : access constant gsl_multiroot_fsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multiroots.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_name";

   function gsl_multiroot_fsolver_root (arg1 : access constant gsl_multiroot_fsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_root";

   function gsl_multiroot_fsolver_dx (arg1 : access constant gsl_multiroot_fsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_dx";

   function gsl_multiroot_fsolver_f (arg1 : access constant gsl_multiroot_fsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_f";

  -- Definition of vector-valued functions and gradient with parameters
  --   based on gsl_vector  

   type gsl_multiroot_function_fdf_struct is record
      f : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:103
      df : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multiroots.h:104
      fdf : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multiroots.h:105
      n : aliased size_t;  -- /usr/include/gsl/gsl_multiroots.h:106
      params : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:101

   subtype gsl_multiroot_function_fdf is gsl_multiroot_function_fdf_struct;  -- /usr/include/gsl/gsl_multiroots.h:110

   type gsl_multiroot_fdfsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multiroots.h:118
      size : aliased size_t;  -- /usr/include/gsl/gsl_multiroots.h:119
      alloc : access function (arg1 : System.Address; arg2 : size_t) return int;  -- /usr/include/gsl/gsl_multiroots.h:120
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function_fdf;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:121
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function_fdf;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg6 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:122
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multiroots.h:123
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:125

   type gsl_multiroot_fdfsolver is record
      c_type : access constant gsl_multiroot_fdfsolver_type;  -- /usr/include/gsl/gsl_multiroots.h:129
      fdf : access gsl_multiroot_function_fdf;  -- /usr/include/gsl/gsl_multiroots.h:130
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:131
      f : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:132
      J : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multiroots.h:133
      dx : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:134
      state : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:137

   function gsl_multiroot_fdfsolver_alloc (arg1 : access constant gsl_multiroot_fdfsolver_type; arg2 : size_t) return access gsl_multiroot_fdfsolver  -- /usr/include/gsl/gsl_multiroots.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_alloc";

   function gsl_multiroot_fdfsolver_set
     (s : access gsl_multiroot_fdfsolver;
      fdf : access gsl_multiroot_function_fdf;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multiroots.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_set";

   function gsl_multiroot_fdfsolver_iterate (s : access gsl_multiroot_fdfsolver) return int  -- /usr/include/gsl/gsl_multiroots.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_iterate";

   procedure gsl_multiroot_fdfsolver_free (s : access gsl_multiroot_fdfsolver)  -- /usr/include/gsl/gsl_multiroots.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_free";

   function gsl_multiroot_fdfsolver_name (arg1 : access constant gsl_multiroot_fdfsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multiroots.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_name";

   function gsl_multiroot_fdfsolver_root (arg1 : access constant gsl_multiroot_fdfsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_root";

   function gsl_multiroot_fdfsolver_dx (arg1 : access constant gsl_multiroot_fdfsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_dx";

   function gsl_multiroot_fdfsolver_f (arg1 : access constant gsl_multiroot_fdfsolver) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_f";

   function gsl_multiroot_test_delta
     (dx : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_multiroots.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_test_delta";

   function gsl_multiroot_test_residual (f : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; epsabs : double) return int  -- /usr/include/gsl/gsl_multiroots.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_test_residual";

   gsl_multiroot_fsolver_dnewton : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_dnewton";

   gsl_multiroot_fsolver_broyden : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_broyden";

   gsl_multiroot_fsolver_hybrid : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_hybrid";

   gsl_multiroot_fsolver_hybrids : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_hybrids";

   gsl_multiroot_fdfsolver_newton : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_newton";

   gsl_multiroot_fdfsolver_gnewton : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_gnewton";

   gsl_multiroot_fdfsolver_hybridj : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_hybridj";

   gsl_multiroot_fdfsolver_hybridsj : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_hybridsj";

end GSL.Low_Level.gsl_gsl_multiroots_h;
