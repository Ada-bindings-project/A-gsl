pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;

package GSL.Low_Level.gsl_gsl_interp_h is

  -- interpolation/gsl_interp.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2004 Gerard Jungman
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

  -- evaluation accelerator  
  -- cache of index    
  -- keep statistics   
   type gsl_interp_accel is record
      cache : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:42
      miss_count : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:43
      hit_count : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:46

  -- interpolation object type  
   type gsl_interp_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_interp.h:51
      min_size : aliased unsigned;  -- /usr/include/gsl/gsl_interp.h:52
      alloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/gsl/gsl_interp.h:53
      init : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t) return int;  -- /usr/include/gsl/gsl_interp.h:54
      eval : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:55
      eval_deriv : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:56
      eval_deriv2 : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:57
      eval_integ : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : access gsl_interp_accel;
            arg6 : double;
            arg7 : double;
            arg8 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:58
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_interp.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:61

  -- general interpolation object  
   type gsl_interp is record
      c_type : access constant gsl_interp_type;  -- /usr/include/gsl/gsl_interp.h:66
      xmin : aliased double;  -- /usr/include/gsl/gsl_interp.h:67
      xmax : aliased double;  -- /usr/include/gsl/gsl_interp.h:68
      size : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:69
      state : System.Address;  -- /usr/include/gsl/gsl_interp.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:71

  -- available types  
   gsl_interp_linear : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_linear";

   gsl_interp_polynomial : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_polynomial";

   gsl_interp_cspline : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_cspline";

   gsl_interp_cspline_periodic : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_cspline_periodic";

   gsl_interp_akima : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_akima";

   gsl_interp_akima_periodic : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_akima_periodic";

   gsl_interp_steffen : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_steffen";

   function gsl_interp_accel_alloc return access gsl_interp_accel  -- /usr/include/gsl/gsl_interp.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_alloc";

   function gsl_interp_accel_reset (a : access gsl_interp_accel) return int  -- /usr/include/gsl/gsl_interp.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_reset";

   procedure gsl_interp_accel_free (a : access gsl_interp_accel)  -- /usr/include/gsl/gsl_interp.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_free";

   function gsl_interp_alloc (arg1 : access constant gsl_interp_type; arg2 : size_t) return access gsl_interp  -- /usr/include/gsl/gsl_interp.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_alloc";

   function gsl_interp_init
     (obj : access gsl_interp;
      xa : access double;
      ya : access double;
      size : size_t) return int  -- /usr/include/gsl/gsl_interp.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_init";

   function gsl_interp_name (arg1 : access constant gsl_interp) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_interp.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_name";

   function gsl_interp_min_size (interp : access constant gsl_interp) return unsigned  -- /usr/include/gsl/gsl_interp.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_min_size";

   function gsl_interp_type_min_size (T : access constant gsl_interp_type) return unsigned  -- /usr/include/gsl/gsl_interp.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_type_min_size";

   function gsl_interp_eval_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_interp.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_e";

   function gsl_interp_eval
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval";

   function gsl_interp_eval_deriv_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      d : access double) return int  -- /usr/include/gsl/gsl_interp.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv_e";

   function gsl_interp_eval_deriv
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv";

   function gsl_interp_eval_deriv2_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      d2 : access double) return int  -- /usr/include/gsl/gsl_interp.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv2_e";

   function gsl_interp_eval_deriv2
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv2";

   function gsl_interp_eval_integ_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      a : double;
      b : double;
      acc : access gsl_interp_accel;
      result : access double) return int  -- /usr/include/gsl/gsl_interp.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_integ_e";

   function gsl_interp_eval_integ
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      a : double;
      b : double;
      acc : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_integ";

   procedure gsl_interp_free (interp : access gsl_interp)  -- /usr/include/gsl/gsl_interp.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_free";

   function gsl_interp_bsearch
     (x_array : access double;
      x : double;
      index_lo : size_t;
      index_hi : size_t) return size_t  -- /usr/include/gsl/gsl_interp.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_bsearch";

  -- Perform a binary search of an array of values.
  -- * 
  -- * The parameters index_lo and index_hi provide an initial bracket,
  -- * and it is assumed that index_lo < index_hi. The resulting index
  -- * is guaranteed to be strictly less than index_hi and greater than
  -- * or equal to index_lo, so that the implicit bracket [index, index+1]
  -- * always corresponds to a region within the implicit value range of
  -- * the value array.
  -- *
  -- * Note that this means the relationship of 'x' to x_array[index]
  -- * and x_array[index+1] depends on the result region, i.e. the
  -- * behaviour at the boundaries may not correspond to what you
  -- * expect. We have the following complete specification of the
  -- * behaviour.
  -- * Suppose the input is x_array[] = { x0, x1, ..., xN }
  -- *    if ( x == x0 )           then  index == 0
  -- *    if ( x > x0 && x <= x1 ) then  index == 0, and sim. for other interior pts
  -- *    if ( x == xN )           then  index == N-1
  -- *    if ( x > xN )            then  index == N-1
  -- *    if ( x < x0 )            then  index == 0 
  --  

   function gsl_interp_accel_find
     (a : access gsl_interp_accel;
      x_array : access double;
      size : size_t;
      x : double) return size_t  -- /usr/include/gsl/gsl_interp.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_find";

end GSL.Low_Level.gsl_gsl_interp_h;
