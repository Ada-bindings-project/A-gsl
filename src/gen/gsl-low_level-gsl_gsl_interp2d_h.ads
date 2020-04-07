pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
limited with GSL.Low_Level.gsl_gsl_interp_h;

package GSL.Low_Level.gsl_gsl_interp2d_h is

  -- interpolation/gsl_interp2d.h
  -- * 
  -- * Copyright 2012 David Zaslavsky
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

   type gsl_interp2d_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_interp2d.h:38
      min_size : aliased unsigned;  -- /usr/include/gsl/gsl_interp2d.h:39
      alloc : access function (arg1 : size_t; arg2 : size_t) return System.Address;  -- /usr/include/gsl/gsl_interp2d.h:40
      init : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t) return int;  -- /usr/include/gsl/gsl_interp2d.h:41
      eval : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:42
      eval_deriv_x : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:43
      eval_deriv_y : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:44
      eval_deriv_xx : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:45
      eval_deriv_xy : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:46
      eval_deriv_yy : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : size_t;
            arg6 : size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:47
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_interp2d.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp2d.h:49

  -- interpolation type  
  -- minimum value of x for which data have been provided  
  -- maximum value of x for which data have been provided  
  -- minimum value of y for which data have been provided  
  -- maximum value of y for which data have been provided  
  -- number of x values provided  
  -- number of y values provided  
  -- internal state object specific to the interpolation type  
   type gsl_interp2d is record
      c_type : access constant gsl_interp2d_type;  -- /usr/include/gsl/gsl_interp2d.h:52
      xmin : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:53
      xmax : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:54
      ymin : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:55
      ymax : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:56
      xsize : aliased size_t;  -- /usr/include/gsl/gsl_interp2d.h:57
      ysize : aliased size_t;  -- /usr/include/gsl/gsl_interp2d.h:58
      state : System.Address;  -- /usr/include/gsl/gsl_interp2d.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp2d.h:60

  -- available types  
   gsl_interp2d_bilinear : access constant gsl_interp2d_type  -- /usr/include/gsl/gsl_interp2d.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_bilinear";

   gsl_interp2d_bicubic : access constant gsl_interp2d_type  -- /usr/include/gsl/gsl_interp2d.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_bicubic";

   function gsl_interp2d_alloc
     (arg1 : access constant gsl_interp2d_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_interp2d  -- /usr/include/gsl/gsl_interp2d.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_alloc";

   function gsl_interp2d_name (arg1 : access constant gsl_interp2d) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_interp2d.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_name";

   function gsl_interp2d_min_size (interp : access constant gsl_interp2d) return size_t  -- /usr/include/gsl/gsl_interp2d.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_min_size";

   function gsl_interp2d_type_min_size (T : access constant gsl_interp2d_type) return size_t  -- /usr/include/gsl/gsl_interp2d.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_type_min_size";

   function gsl_interp2d_set
     (interp : access constant gsl_interp2d;
      zarr : access double;
      i : size_t;
      j : size_t;
      z : double) return int  -- /usr/include/gsl/gsl_interp2d.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_set";

   function gsl_interp2d_get
     (interp : access constant gsl_interp2d;
      zarr : access double;
      i : size_t;
      j : size_t) return double  -- /usr/include/gsl/gsl_interp2d.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_get";

   function gsl_interp2d_idx
     (interp : access constant gsl_interp2d;
      i : size_t;
      j : size_t) return size_t  -- /usr/include/gsl/gsl_interp2d.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_idx";

   function gsl_interp2d_init
     (interp : access gsl_interp2d;
      xa : access double;
      ya : access double;
      za : access double;
      xsize : size_t;
      ysize : size_t) return int  -- /usr/include/gsl/gsl_interp2d.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_init";

   procedure gsl_interp2d_free (interp : access gsl_interp2d)  -- /usr/include/gsl/gsl_interp2d.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_free";

   function gsl_interp2d_eval
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval";

   function gsl_interp2d_eval_extrap
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_extrap";

   function gsl_interp2d_eval_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_e";

   function gsl_interp2d_eval_e_extrap
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_e_extrap";

   function gsl_interp2d_eval_deriv_x
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_x";

   function gsl_interp2d_eval_deriv_x_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_x_e";

   function gsl_interp2d_eval_deriv_y
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_y";

   function gsl_interp2d_eval_deriv_y_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_y_e";

   function gsl_interp2d_eval_deriv_xx
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xx";

   function gsl_interp2d_eval_deriv_xx_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xx_e";

   function gsl_interp2d_eval_deriv_yy
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_yy";

   function gsl_interp2d_eval_deriv_yy_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_yy_e";

   function gsl_interp2d_eval_deriv_xy
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xy";

   function gsl_interp2d_eval_deriv_xy_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xy_e";

end GSL.Low_Level.gsl_gsl_interp2d_h;
