pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_uchar_h is

  -- statistics/gsl_statistics_uchar.h
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

   function gsl_stats_uchar_mean
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_mean";

   function gsl_stats_uchar_variance
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_variance";

   function gsl_stats_uchar_sd
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_sd";

   function gsl_stats_uchar_variance_with_fixed_mean
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_variance_with_fixed_mean";

   function gsl_stats_uchar_sd_with_fixed_mean
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_sd_with_fixed_mean";

   function gsl_stats_uchar_tss
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_tss";

   function gsl_stats_uchar_tss_m
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_tss_m";

   function gsl_stats_uchar_absdev
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_absdev";

   function gsl_stats_uchar_skew
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_skew";

   function gsl_stats_uchar_kurtosis
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_kurtosis";

   function gsl_stats_uchar_lag1_autocorrelation
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_lag1_autocorrelation";

   function gsl_stats_uchar_covariance
     (data1 : access unsigned_char;
      stride1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_covariance";

   function gsl_stats_uchar_correlation
     (data1 : access unsigned_char;
      stride1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_correlation";

   function gsl_stats_uchar_spearman
     (data1 : access unsigned_char;
      stride1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_spearman";

   function gsl_stats_uchar_variance_m
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_variance_m";

   function gsl_stats_uchar_sd_m
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_sd_m";

   function gsl_stats_uchar_absdev_m
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_absdev_m";

   function gsl_stats_uchar_skew_m_sd
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_skew_m_sd";

   function gsl_stats_uchar_kurtosis_m_sd
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_kurtosis_m_sd";

   function gsl_stats_uchar_lag1_autocorrelation_m
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_lag1_autocorrelation_m";

   function gsl_stats_uchar_covariance_m
     (data1 : access unsigned_char;
      stride1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_covariance_m";

   function gsl_stats_uchar_pvariance
     (data1 : access unsigned_char;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_pvariance";

   function gsl_stats_uchar_ttest
     (data1 : access unsigned_char;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_char;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_ttest";

   function gsl_stats_uchar_max
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return unsigned_char  -- /usr/include/gsl/gsl_statistics_uchar.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_max";

   function gsl_stats_uchar_min
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return unsigned_char  -- /usr/include/gsl/gsl_statistics_uchar.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_min";

   procedure gsl_stats_uchar_minmax
     (min : access unsigned_char;
      max : access unsigned_char;
      data : access unsigned_char;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_uchar.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_minmax";

   function gsl_stats_uchar_max_index
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_uchar.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_max_index";

   function gsl_stats_uchar_min_index
     (data : access unsigned_char;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_uchar.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_min_index";

   procedure gsl_stats_uchar_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access unsigned_char;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_uchar.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_minmax_index";

   function gsl_stats_uchar_select
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      k : size_t) return unsigned_char  -- /usr/include/gsl/gsl_statistics_uchar.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_select";

   function gsl_stats_uchar_median_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_median_from_sorted_data";

   function gsl_stats_uchar_median
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_median";

   function gsl_stats_uchar_quantile_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_quantile_from_sorted_data";

   function gsl_stats_uchar_trmean_from_sorted_data
     (trim : double;
      sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_trmean_from_sorted_data";

   function gsl_stats_uchar_gastwirth_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_gastwirth_from_sorted_data";

   function gsl_stats_uchar_mad0
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_mad0";

   function gsl_stats_uchar_mad
     (data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_mad";

   function gsl_stats_uchar_Sn0_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access unsigned_char) return unsigned_char  -- /usr/include/gsl/gsl_statistics_uchar.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_Sn0_from_sorted_data";

   function gsl_stats_uchar_Sn_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access unsigned_char) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_Sn_from_sorted_data";

   function gsl_stats_uchar_Qn0_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access unsigned_char;
      work_int : access int) return unsigned_char  -- /usr/include/gsl/gsl_statistics_uchar.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_Qn0_from_sorted_data";

   function gsl_stats_uchar_Qn_from_sorted_data
     (sorted_data : access unsigned_char;
      stride : size_t;
      n : size_t;
      work : access unsigned_char;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_uchar.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_uchar_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_uchar_h;
