pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_rstat_h is

  -- rstat/gsl_rstat.h
  -- * 
  -- * Copyright (C) 2015 Patrick Alken
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

  -- p-quantile  
  -- heights q_i  
  -- positions n_i  
  -- desired positions n_i'  
  -- increments dn_i'  
  -- number of data added  
   type gsl_rstat_quantile_workspace_array5447 is array (0 .. 4) of aliased double;
   type gsl_rstat_quantile_workspace_array5448 is array (0 .. 4) of aliased int;
   type gsl_rstat_quantile_workspace is record
      p : aliased double;  -- /usr/include/gsl/gsl_rstat.h:37
      q : aliased gsl_rstat_quantile_workspace_array5447;  -- /usr/include/gsl/gsl_rstat.h:38
      npos : aliased gsl_rstat_quantile_workspace_array5448;  -- /usr/include/gsl/gsl_rstat.h:39
      np : aliased gsl_rstat_quantile_workspace_array5447;  -- /usr/include/gsl/gsl_rstat.h:40
      dnp : aliased gsl_rstat_quantile_workspace_array5447;  -- /usr/include/gsl/gsl_rstat.h:41
      n : aliased size_t;  -- /usr/include/gsl/gsl_rstat.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rstat.h:43

   function gsl_rstat_quantile_alloc (arg1 : double) return access gsl_rstat_quantile_workspace  -- /usr/include/gsl/gsl_rstat.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_alloc";

   procedure gsl_rstat_quantile_free (w : access gsl_rstat_quantile_workspace)  -- /usr/include/gsl/gsl_rstat.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_free";

   function gsl_rstat_quantile_reset (w : access gsl_rstat_quantile_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_reset";

   function gsl_rstat_quantile_add (x : double; w : access gsl_rstat_quantile_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_add";

   function gsl_rstat_quantile_get (w : access gsl_rstat_quantile_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_get";

  -- minimum value added  
  -- maximum value added  
  -- current mean  
  -- M_k = sum_{i=1..n} [ x_i - mean_n ]^k  
  -- number of data points added  
  -- median workspace  
   type gsl_rstat_workspace is record
      min : aliased double;  -- /usr/include/gsl/gsl_rstat.h:53
      max : aliased double;  -- /usr/include/gsl/gsl_rstat.h:54
      mean : aliased double;  -- /usr/include/gsl/gsl_rstat.h:55
      M2 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:56
      M3 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:57
      M4 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:58
      n : aliased size_t;  -- /usr/include/gsl/gsl_rstat.h:59
      median_workspace_p : access gsl_rstat_quantile_workspace;  -- /usr/include/gsl/gsl_rstat.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rstat.h:61

   function gsl_rstat_alloc return access gsl_rstat_workspace  -- /usr/include/gsl/gsl_rstat.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_alloc";

   procedure gsl_rstat_free (w : access gsl_rstat_workspace)  -- /usr/include/gsl/gsl_rstat.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_free";

   function gsl_rstat_n (w : access constant gsl_rstat_workspace) return size_t  -- /usr/include/gsl/gsl_rstat.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_n";

   function gsl_rstat_add (x : double; w : access gsl_rstat_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_add";

   function gsl_rstat_min (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_min";

   function gsl_rstat_max (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_max";

   function gsl_rstat_mean (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_mean";

   function gsl_rstat_variance (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_variance";

   function gsl_rstat_sd (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_sd";

   function gsl_rstat_rms (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_rms";

   function gsl_rstat_sd_mean (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_sd_mean";

   function gsl_rstat_median (w : access gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_median";

   function gsl_rstat_skew (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_skew";

   function gsl_rstat_kurtosis (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_kurtosis";

   function gsl_rstat_reset (w : access gsl_rstat_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_reset";

end GSL.Low_Level.gsl_gsl_rstat_h;
