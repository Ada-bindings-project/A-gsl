pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_float_h is

  -- statistics/gsl_statistics_float.h
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

   function gsl_stats_float_mean
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mean";

   function gsl_stats_float_variance
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance";

   function gsl_stats_float_sd
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd";

   function gsl_stats_float_variance_with_fixed_mean
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance_with_fixed_mean";

   function gsl_stats_float_sd_with_fixed_mean
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd_with_fixed_mean";

   function gsl_stats_float_tss
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_tss";

   function gsl_stats_float_tss_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_tss_m";

   function gsl_stats_float_absdev
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_absdev";

   function gsl_stats_float_skew
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_skew";

   function gsl_stats_float_kurtosis
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_kurtosis";

   function gsl_stats_float_lag1_autocorrelation
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_lag1_autocorrelation";

   function gsl_stats_float_covariance
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_covariance";

   function gsl_stats_float_correlation
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_correlation";

   function gsl_stats_float_spearman
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_spearman";

   function gsl_stats_float_variance_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance_m";

   function gsl_stats_float_sd_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd_m";

   function gsl_stats_float_absdev_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_absdev_m";

   function gsl_stats_float_skew_m_sd
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_skew_m_sd";

   function gsl_stats_float_kurtosis_m_sd
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_kurtosis_m_sd";

   function gsl_stats_float_lag1_autocorrelation_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_lag1_autocorrelation_m";

   function gsl_stats_float_covariance_m
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_covariance_m";

  -- DEFINED FOR FLOATING POINT TYPES ONLY  
   function gsl_stats_float_wmean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wmean";

   function gsl_stats_float_wvariance
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance";

   function gsl_stats_float_wsd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd";

   function gsl_stats_float_wvariance_with_fixed_mean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance_with_fixed_mean";

   function gsl_stats_float_wsd_with_fixed_mean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd_with_fixed_mean";

   function gsl_stats_float_wtss
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wtss";

   function gsl_stats_float_wtss_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wtss_m";

   function gsl_stats_float_wabsdev
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wabsdev";

   function gsl_stats_float_wskew
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wskew";

   function gsl_stats_float_wkurtosis
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wkurtosis";

   function gsl_stats_float_wvariance_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance_m";

   function gsl_stats_float_wsd_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd_m";

   function gsl_stats_float_wabsdev_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wabsdev_m";

   function gsl_stats_float_wskew_m_sd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wskew_m_sd";

   function gsl_stats_float_wkurtosis_m_sd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wkurtosis_m_sd";

  -- END OF FLOATING POINT TYPES  
   function gsl_stats_float_pvariance
     (data1 : access float;
      stride1 : size_t;
      n1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_pvariance";

   function gsl_stats_float_ttest
     (data1 : access float;
      stride1 : size_t;
      n1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_ttest";

   function gsl_stats_float_max
     (data : access float;
      stride : size_t;
      n : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_max";

   function gsl_stats_float_min
     (data : access float;
      stride : size_t;
      n : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_min";

   procedure gsl_stats_float_minmax
     (min : access float;
      max : access float;
      data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_float.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_minmax";

   function gsl_stats_float_max_index
     (data : access float;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_float.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_max_index";

   function gsl_stats_float_min_index
     (data : access float;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_float.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_min_index";

   procedure gsl_stats_float_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_float.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_minmax_index";

   function gsl_stats_float_select
     (data : access float;
      stride : size_t;
      n : size_t;
      k : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_select";

   function gsl_stats_float_median_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_median_from_sorted_data";

   function gsl_stats_float_median
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_median";

   function gsl_stats_float_quantile_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_quantile_from_sorted_data";

   function gsl_stats_float_trmean_from_sorted_data
     (trim : double;
      sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_trmean_from_sorted_data";

   function gsl_stats_float_gastwirth_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_gastwirth_from_sorted_data";

   function gsl_stats_float_mad0
     (data : access float;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mad0";

   function gsl_stats_float_mad
     (data : access float;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mad";

   function gsl_stats_float_Sn0_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float) return float  -- /usr/include/gsl/gsl_statistics_float.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Sn0_from_sorted_data";

   function gsl_stats_float_Sn_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float) return double  -- /usr/include/gsl/gsl_statistics_float.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Sn_from_sorted_data";

   function gsl_stats_float_Qn0_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float;
      work_int : access int) return float  -- /usr/include/gsl/gsl_statistics_float.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Qn0_from_sorted_data";

   function gsl_stats_float_Qn_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_float.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_float_h;
