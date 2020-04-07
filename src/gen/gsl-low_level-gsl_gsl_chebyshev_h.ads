pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_math_h;
with GSL.Low_Level.gsl_gsl_mode_h;

package GSL.Low_Level.gsl_gsl_chebyshev_h is

  -- cheb/gsl_chebyshev.h
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

  -- data for a Chebyshev series over a given interval  
  -- coefficients                 
   type gsl_cheb_series_struct is record
      c : access double;  -- /usr/include/gsl/gsl_chebyshev.h:43
      order : aliased size_t;  -- /usr/include/gsl/gsl_chebyshev.h:44
      a : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:45
      b : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:46
      order_sp : aliased size_t;  -- /usr/include/gsl/gsl_chebyshev.h:58
      f : access double;  -- /usr/include/gsl/gsl_chebyshev.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_chebyshev.h:41

  -- order of expansion           
  -- lower interval point         
  -- upper interval point         
  -- The following exists (mostly) for the benefit
  --   * of the implementation. It is an effective single
  --   * precision order, for use in single precision
  --   * evaluation. Users can use it if they like, but
  --   * only they know how to calculate it, since it is
  --   * specific to the approximated function. By default,
  --   * order_sp = order.
  --   * It is used explicitly only by the gsl_cheb_eval_mode
  --   * functions, which are not meant for casual use.
  --    

  -- Additional elements not used by specfunc  
  -- function evaluated at chebyschev points   
   subtype gsl_cheb_series is gsl_cheb_series_struct;  -- /usr/include/gsl/gsl_chebyshev.h:64

  -- Calculate a Chebyshev series of specified order over
  -- * a specified interval, for a given function.
  -- * Return 0 on failure.
  --  

   function gsl_cheb_alloc (arg1 : size_t) return access gsl_cheb_series  -- /usr/include/gsl/gsl_chebyshev.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_alloc";

  -- Free a Chebyshev series previously calculated with gsl_cheb_alloc().
  --  

   procedure gsl_cheb_free (cs : access gsl_cheb_series)  -- /usr/include/gsl/gsl_chebyshev.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_free";

  -- Calculate a Chebyshev series using the storage provided.
  -- * Uses the interval (a,b) and the order with which it
  -- * was initially created.
  -- *
  --  

   function gsl_cheb_init
     (cs : access gsl_cheb_series;
      func : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      a : double;
      b : double) return int  -- /usr/include/gsl/gsl_chebyshev.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_init";

  -- Return the order, size of coefficient array and coefficient array ptr  
   function gsl_cheb_order (cs : access constant gsl_cheb_series) return size_t  -- /usr/include/gsl/gsl_chebyshev.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_order";

   function gsl_cheb_size (cs : access constant gsl_cheb_series) return size_t  -- /usr/include/gsl/gsl_chebyshev.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_size";

   function gsl_cheb_coeffs (arg1 : access constant gsl_cheb_series) return access double  -- /usr/include/gsl/gsl_chebyshev.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_coeffs";

  -- Evaluate a Chebyshev series at a given point.
  -- * No errors can occur for a struct obtained from gsl_cheb_new().
  --  

   function gsl_cheb_eval (cs : access constant gsl_cheb_series; x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval";

   function gsl_cheb_eval_err
     (cs : access constant gsl_cheb_series;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_err";

  -- Evaluate a Chebyshev series at a given point, to (at most) the given order.
  -- * No errors can occur for a struct obtained from gsl_cheb_new().
  --  

   function gsl_cheb_eval_n
     (cs : access constant gsl_cheb_series;
      order : size_t;
      x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n";

   function gsl_cheb_eval_n_err
     (cs : access constant gsl_cheb_series;
      order : size_t;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n_err";

  -- Evaluate a Chebyshev series at a given point, using the default
  -- * order for double precision mode(s) and the single precision
  -- * order for other modes.
  -- * No errors can occur for a struct obtained from gsl_cheb_new().
  --  

   function gsl_cheb_eval_mode
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_chebyshev.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode";

   function gsl_cheb_eval_mode_e
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode_e";

  -- Compute the derivative of a Chebyshev series.
  --  

   function gsl_cheb_calc_deriv (deriv : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_deriv";

  -- Compute the integral of a Chebyshev series. The
  -- * integral is fixed by the condition that it equals zero at
  -- * the left end-point, ie it is precisely
  -- *       Integrate[cs(t; a,b), {t, a, x}]
  --  

   function gsl_cheb_calc_integ (integ : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_integ";

end GSL.Low_Level.gsl_gsl_chebyshev_h;
