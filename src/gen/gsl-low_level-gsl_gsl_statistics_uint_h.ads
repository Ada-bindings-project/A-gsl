pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_uint_h is

  -- statistics/gsl_statistics_uint.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Jim Davies, Brian Gough
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

   function gsl_stats_uint_mean
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_mean";

   function gsl_stats_uint_variance
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_variance";

   function gsl_stats_uint_sd
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_sd";

   function gsl_stats_uint_variance_with_fixed_mean
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_variance_with_fixed_mean";

   function gsl_stats_uint_sd_with_fixed_mean
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_sd_with_fixed_mean";

   function gsl_stats_uint_tss
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_tss";

   function gsl_stats_uint_tss_m
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_tss_m";

   function gsl_stats_uint_absdev
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_absdev";

   function gsl_stats_uint_skew
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_skew";

   function gsl_stats_uint_kurtosis
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_kurtosis";

   function gsl_stats_uint_lag1_autocorrelation
     (data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_lag1_autocorrelation";

   function gsl_stats_uint_covariance
     (data1 : access unsigned;
      stride1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_covariance";

   function gsl_stats_uint_correlation
     (data1 : access unsigned;
      stride1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_correlation";

   function gsl_stats_uint_spearman
     (data1 : access unsigned;
      stride1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_spearman";

   function gsl_stats_uint_variance_m
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_variance_m";

   function gsl_stats_uint_sd_m
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_sd_m";

   function gsl_stats_uint_absdev_m
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_absdev_m";

   function gsl_stats_uint_skew_m_sd
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_skew_m_sd";

   function gsl_stats_uint_kurtosis_m_sd
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_kurtosis_m_sd";

   function gsl_stats_uint_lag1_autocorrelation_m
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_lag1_autocorrelation_m";

   function gsl_stats_uint_covariance_m
     (data1 : access unsigned;
      stride1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_covariance_m";

   function gsl_stats_uint_pvariance
     (data1 : access unsigned;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_pvariance";

   function gsl_stats_uint_ttest
     (data1 : access unsigned;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_ttest";

   function gsl_stats_uint_max
     (data : access unsigned;
      stride : size_t;
      n : size_t) return unsigned  -- /usr/include/gsl/gsl_statistics_uint.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_max";

   function gsl_stats_uint_min
     (data : access unsigned;
      stride : size_t;
      n : size_t) return unsigned  -- /usr/include/gsl/gsl_statistics_uint.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_min";

   procedure gsl_stats_uint_minmax
     (min : access unsigned;
      max : access unsigned;
      data : access unsigned;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_uint.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_minmax";

   function gsl_stats_uint_max_index
     (data : access unsigned;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_uint.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_max_index";

   function gsl_stats_uint_min_index
     (data : access unsigned;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_uint.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_min_index";

   procedure gsl_stats_uint_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access unsigned;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_uint.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_minmax_index";

   function gsl_stats_uint_select
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      k : size_t) return unsigned  -- /usr/include/gsl/gsl_statistics_uint.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_select";

   function gsl_stats_uint_median_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_median_from_sorted_data";

   function gsl_stats_uint_median
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_median";

   function gsl_stats_uint_quantile_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_quantile_from_sorted_data";

   function gsl_stats_uint_trmean_from_sorted_data
     (trim : double;
      sorted_data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_trmean_from_sorted_data";

   function gsl_stats_uint_gastwirth_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uint.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_gastwirth_from_sorted_data";

   function gsl_stats_uint_mad0
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_mad0";

   function gsl_stats_uint_mad
     (data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uint.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_mad";

   function gsl_stats_uint_Sn0_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access unsigned) return unsigned  -- /usr/include/gsl/gsl_statistics_uint.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_Sn0_from_sorted_data";

   function gsl_stats_uint_Sn_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access unsigned) return double  -- /usr/include/gsl/gsl_statistics_uint.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_Sn_from_sorted_data";

   function gsl_stats_uint_Qn0_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access unsigned;
      work_int : access int) return unsigned  -- /usr/include/gsl/gsl_statistics_uint.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_Qn0_from_sorted_data";

   function gsl_stats_uint_Qn_from_sorted_data
     (sorted_data : access unsigned;
      stride : size_t;
      n : size_t;
      work : access unsigned;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_uint.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uint_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_uint_h;
