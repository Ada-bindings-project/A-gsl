pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sum_h is

  -- sum/gsl_sum.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Gerard Jungman, Brian Gough
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
  --  Workspace for Levin U Transform with error estimation,
  -- *   
  -- *   size        = number of terms the workspace can handle
  -- *   sum_plain   = simple sum of series
  -- *   q_num       = backward diagonal of numerator; length = size
  -- *   q_den       = backward diagonal of denominator; length = size
  -- *   dq_num      = table of numerator derivatives; length = size**2
  -- *   dq_den      = table of denominator derivatives; length = size**2
  -- *   dsum        = derivative of sum wrt term i; length = size
  --  

  -- position in array  
  -- number of calls  
   type gsl_sum_levin_u_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:53
      i : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:54
      terms_used : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:55
      sum_plain : aliased double;  -- /usr/include/gsl/gsl_sum.h:56
      q_num : access double;  -- /usr/include/gsl/gsl_sum.h:57
      q_den : access double;  -- /usr/include/gsl/gsl_sum.h:58
      dq_num : access double;  -- /usr/include/gsl/gsl_sum.h:59
      dq_den : access double;  -- /usr/include/gsl/gsl_sum.h:60
      dsum : access double;  -- /usr/include/gsl/gsl_sum.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sum.h:63

   function gsl_sum_levin_u_alloc (arg1 : size_t) return access gsl_sum_levin_u_workspace  -- /usr/include/gsl/gsl_sum.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_alloc";

   procedure gsl_sum_levin_u_free (w : access gsl_sum_levin_u_workspace)  -- /usr/include/gsl/gsl_sum.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_free";

  -- Basic Levin-u acceleration method.
  -- *
  -- *   array       = array of series elements
  -- *   n           = size of array
  -- *   sum_accel   = result of summation acceleration
  -- *   err         = estimated error   
  -- *
  -- * See [Fessler et al., ACM TOMS 9, 346 (1983) and TOMS-602]
  --  

   function gsl_sum_levin_u_accel
     (c_array : access double;
      n : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_sum.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_accel";

  -- Basic Levin-u acceleration method with constraints on the terms
  -- * used,
  -- *
  -- *   array       = array of series elements
  -- *   n           = size of array
  -- *   min_terms   = minimum number of terms to sum
  -- *   max_terms   = maximum number of terms to sum
  -- *   sum_accel   = result of summation acceleration
  -- *   err         = estimated error   
  -- *
  -- * See [Fessler et al., ACM TOMS 9, 346 (1983) and TOMS-602] 
  --  

   function gsl_sum_levin_u_minmax
     (c_array : access double;
      n : size_t;
      min_terms : size_t;
      max_terms : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_sum.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_minmax";

  -- Basic Levin-u step w/o reference to the array of terms.
  -- * We only need to specify the value of the current term
  -- * to execute the step. See TOMS-745.
  -- *
  -- * sum = t0 + ... + t_{n-1} + term;  term = t_{n}
  -- *
  -- *   term   = value of the series term to be added
  -- *   n      = position of term in series (starting from 0)
  -- *   sum_accel = result of summation acceleration
  -- *   sum_plain = simple sum of series
  --  

   function gsl_sum_levin_u_step
     (term : double;
      n : size_t;
      nmax : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double) return int  -- /usr/include/gsl/gsl_sum.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_step";

  -- The following functions perform the same calculation without
  --   estimating the errors. They require O(N) storage instead of O(N^2).
  --   This may be useful for summing many similar series where the size
  --   of the error has already been estimated reliably and is not
  --   expected to change.   

  -- position in array  
  -- number of calls  
   type gsl_sum_levin_utrunc_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:130
      i : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:131
      terms_used : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:132
      sum_plain : aliased double;  -- /usr/include/gsl/gsl_sum.h:133
      q_num : access double;  -- /usr/include/gsl/gsl_sum.h:134
      q_den : access double;  -- /usr/include/gsl/gsl_sum.h:135
      dsum : access double;  -- /usr/include/gsl/gsl_sum.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sum.h:138

   function gsl_sum_levin_utrunc_alloc (arg1 : size_t) return access gsl_sum_levin_utrunc_workspace  -- /usr/include/gsl/gsl_sum.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_alloc";

   procedure gsl_sum_levin_utrunc_free (w : access gsl_sum_levin_utrunc_workspace)  -- /usr/include/gsl/gsl_sum.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_free";

   function gsl_sum_levin_utrunc_accel
     (c_array : access double;
      n : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double;
      abserr_trunc : access double) return int  -- /usr/include/gsl/gsl_sum.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_accel";

   function gsl_sum_levin_utrunc_minmax
     (c_array : access double;
      n : size_t;
      min_terms : size_t;
      max_terms : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double;
      abserr_trunc : access double) return int  -- /usr/include/gsl/gsl_sum.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_minmax";

   function gsl_sum_levin_utrunc_step
     (term : double;
      n : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double) return int  -- /usr/include/gsl/gsl_sum.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_step";

end GSL.Low_Level.gsl_gsl_sum_h;
