pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_movstat_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with System;
limited with GSL.Low_Level.gsl_gsl_vector_int_h;

package GSL.Low_Level.gsl_gsl_filter_h is

  -- filter/gsl_filter.h
  -- * 
  -- * Copyright (C) 2018 Patrick Alken
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

  -- end point handling methods  
   type gsl_filter_end_t is 
     (GSL_FILTER_END_PADZERO,
      GSL_FILTER_END_PADVALUE,
      GSL_FILTER_END_TRUNCATE)
   with Convention => C;  -- /usr/include/gsl/gsl_filter.h:45

  -- robust scale estimates  
  -- median absolute deviation  
  -- interquartile range  
  -- S_n scale statistic  
  -- Q_n scale statistic  
   type gsl_filter_scale_t is 
     (GSL_FILTER_SCALE_MAD,
      GSL_FILTER_SCALE_IQR,
      GSL_FILTER_SCALE_SN,
      GSL_FILTER_SCALE_QN)
   with Convention => C;  -- /usr/include/gsl/gsl_filter.h:54

  -- workspace for Gaussian filter  
  -- window size  
  -- Gaussian kernel, size K  
   type gsl_filter_gaussian_workspace is record
      K : aliased size_t;  -- /usr/include/gsl/gsl_filter.h:59
      kernel : access double;  -- /usr/include/gsl/gsl_filter.h:60
      movstat_workspace_p : access GSL.Low_Level.gsl_gsl_movstat_h.gsl_movstat_workspace;  -- /usr/include/gsl/gsl_filter.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_filter.h:62

   function gsl_filter_gaussian_alloc (arg1 : size_t) return access gsl_filter_gaussian_workspace  -- /usr/include/gsl/gsl_filter.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_gaussian_alloc";

   procedure gsl_filter_gaussian_free (w : access gsl_filter_gaussian_workspace)  -- /usr/include/gsl/gsl_filter.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_gaussian_free";

   function gsl_filter_gaussian
     (endtype : gsl_filter_end_t;
      alpha : double;
      order : size_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_filter_gaussian_workspace) return int  -- /usr/include/gsl/gsl_filter.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_gaussian";

   function gsl_filter_gaussian_kernel
     (alpha : double;
      order : size_t;
      normalize : int;
      kernel : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_filter.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_gaussian_kernel";

  -- workspace for standard median filter  
   type gsl_filter_median_workspace is record
      movstat_workspace_p : access GSL.Low_Level.gsl_gsl_movstat_h.gsl_movstat_workspace;  -- /usr/include/gsl/gsl_filter.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_filter.h:74

   function gsl_filter_median_alloc (arg1 : size_t) return access gsl_filter_median_workspace  -- /usr/include/gsl/gsl_filter.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_median_alloc";

   procedure gsl_filter_median_free (w : access gsl_filter_median_workspace)  -- /usr/include/gsl/gsl_filter.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_median_free";

   function gsl_filter_median
     (endtype : gsl_filter_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_filter_median_workspace) return int  -- /usr/include/gsl/gsl_filter.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_median";

  -- workspace for recursive median filter  
  -- window half-length (K / 2)  
  -- window size  
  -- workspace for min/max accumulator  
  -- array holding first window  
  -- minimum/maximum accumulator  
   type gsl_filter_rmedian_workspace is record
      H : aliased size_t;  -- /usr/include/gsl/gsl_filter.h:83
      K : aliased size_t;  -- /usr/include/gsl/gsl_filter.h:84
      state : System.Address;  -- /usr/include/gsl/gsl_filter.h:85
      window : access double;  -- /usr/include/gsl/gsl_filter.h:86
      minmaxacc : access constant GSL.Low_Level.gsl_gsl_movstat_h.gsl_movstat_accum;  -- /usr/include/gsl/gsl_filter.h:87
      movstat_workspace_p : access GSL.Low_Level.gsl_gsl_movstat_h.gsl_movstat_workspace;  -- /usr/include/gsl/gsl_filter.h:88
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_filter.h:89

   function gsl_filter_rmedian_alloc (arg1 : size_t) return access gsl_filter_rmedian_workspace  -- /usr/include/gsl/gsl_filter.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_rmedian_alloc";

   procedure gsl_filter_rmedian_free (w : access gsl_filter_rmedian_workspace)  -- /usr/include/gsl/gsl_filter.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_rmedian_free";

   function gsl_filter_rmedian
     (arg1 : gsl_filter_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_filter_rmedian_workspace) return int  -- /usr/include/gsl/gsl_filter.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_rmedian";

   function gsl_filter_rmedian2
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_filter_rmedian_workspace) return int  -- /usr/include/gsl/gsl_filter.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_rmedian2";

   type gsl_filter_impulse_workspace is record
      movstat_workspace_p : access GSL.Low_Level.gsl_gsl_movstat_h.gsl_movstat_workspace;  -- /usr/include/gsl/gsl_filter.h:98
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_filter.h:99

   function gsl_filter_impulse_alloc (arg1 : size_t) return access gsl_filter_impulse_workspace  -- /usr/include/gsl/gsl_filter.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_impulse_alloc";

   procedure gsl_filter_impulse_free (w : access gsl_filter_impulse_workspace)  -- /usr/include/gsl/gsl_filter.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_impulse_free";

   function gsl_filter_impulse
     (endtype : gsl_filter_end_t;
      scale_type : gsl_filter_scale_t;
      t : double;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xmedian : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xsigma : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      noutlier : access size_t;
      ioutlier : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      w : access gsl_filter_impulse_workspace) return int  -- /usr/include/gsl/gsl_filter.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_filter_impulse";

end GSL.Low_Level.gsl_gsl_filter_h;
