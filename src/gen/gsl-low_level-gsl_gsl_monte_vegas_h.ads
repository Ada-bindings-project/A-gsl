pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with GSL.Low_Level.gsl_gsl_monte_h;
with GSL.Low_Level.gsl_gsl_rng_h;

package GSL.Low_Level.gsl_gsl_monte_vegas_h is

  -- monte/gsl_monte_vegas.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Michael Booth
  -- * Copyright (C) 2009 Brian Gough
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

  -- header for the gsl "vegas" routines.  Mike Booth, May 1998  
  -- grid  
  -- these are both counted along the axes  
  -- distribution  
  -- control variables  
  -- scratch variables preserved between calls to vegas1/2/3   
   type gsl_monte_vegas_state is record
      dim : aliased size_t;  -- /usr/include/gsl/gsl_monte_vegas.h:48
      bins_max : aliased size_t;  -- /usr/include/gsl/gsl_monte_vegas.h:49
      bins : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:50
      boxes : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:51
      xi : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:52
      xin : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:53
      delx : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:54
      weight : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:55
      vol : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:56
      x : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:58
      bin : access int;  -- /usr/include/gsl/gsl_monte_vegas.h:59
      box : access int;  -- /usr/include/gsl/gsl_monte_vegas.h:60
      d : access double;  -- /usr/include/gsl/gsl_monte_vegas.h:63
      alpha : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:66
      mode : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:67
      verbose : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:68
      iterations : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:69
      stage : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:70
      jac : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:73
      wtd_int_sum : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:74
      sum_wgts : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:75
      chi_sum : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:76
      chisq : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:77
      result : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:79
      sigma : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:80
      it_start : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:82
      it_num : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:83
      samples : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:84
      calls_per_box : aliased unsigned;  -- /usr/include/gsl/gsl_monte_vegas.h:85
      ostream : Interfaces.C_Streams.FILEs;  -- /usr/include/gsl/gsl_monte_vegas.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_vegas.h:89

   function gsl_monte_vegas_integrate
     (f : access GSL.Low_Level.gsl_gsl_monte_h.gsl_monte_function;
      xl : access double;
      xu : access double;
      dim : size_t;
      calls : size_t;
      r : access GSL.Low_Level.gsl_gsl_rng_h.gsl_rng;
      state : access gsl_monte_vegas_state;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_monte_vegas.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_integrate";

   function gsl_monte_vegas_alloc (arg1 : size_t) return access gsl_monte_vegas_state  -- /usr/include/gsl/gsl_monte_vegas.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_alloc";

   function gsl_monte_vegas_init (state : access gsl_monte_vegas_state) return int  -- /usr/include/gsl/gsl_monte_vegas.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_init";

   procedure gsl_monte_vegas_free (state : access gsl_monte_vegas_state)  -- /usr/include/gsl/gsl_monte_vegas.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_free";

   function gsl_monte_vegas_chisq (state : access constant gsl_monte_vegas_state) return double  -- /usr/include/gsl/gsl_monte_vegas.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_chisq";

   procedure gsl_monte_vegas_runval
     (state : access constant gsl_monte_vegas_state;
      result : access double;
      sigma : access double)  -- /usr/include/gsl/gsl_monte_vegas.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_runval";

   type gsl_monte_vegas_params is record
      alpha : aliased double;  -- /usr/include/gsl/gsl_monte_vegas.h:108
      iterations : aliased size_t;  -- /usr/include/gsl/gsl_monte_vegas.h:109
      stage : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:110
      mode : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:111
      verbose : aliased int;  -- /usr/include/gsl/gsl_monte_vegas.h:112
      ostream : Interfaces.C_Streams.FILEs;  -- /usr/include/gsl/gsl_monte_vegas.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_vegas.h:114

   procedure gsl_monte_vegas_params_get (state : access constant gsl_monte_vegas_state; params : access gsl_monte_vegas_params)  -- /usr/include/gsl/gsl_monte_vegas.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_params_get";

   procedure gsl_monte_vegas_params_set (state : access gsl_monte_vegas_state; params : access constant gsl_monte_vegas_params)  -- /usr/include/gsl/gsl_monte_vegas.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_vegas_params_set";

end GSL.Low_Level.gsl_gsl_monte_vegas_h;
