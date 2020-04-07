pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_double_h is

  -- statistics/gsl_statistics_double.h
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

   function gsl_stats_mean
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_mean";

   function gsl_stats_variance
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_variance";

   function gsl_stats_sd
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_sd";

   function gsl_stats_variance_with_fixed_mean
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_variance_with_fixed_mean";

   function gsl_stats_sd_with_fixed_mean
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_sd_with_fixed_mean";

   function gsl_stats_tss
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_tss";

   function gsl_stats_tss_m
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_tss_m";

   function gsl_stats_absdev
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_absdev";

   function gsl_stats_skew
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_skew";

   function gsl_stats_kurtosis
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_kurtosis";

   function gsl_stats_lag1_autocorrelation
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_lag1_autocorrelation";

   function gsl_stats_covariance
     (data1 : access double;
      stride1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_covariance";

   function gsl_stats_correlation
     (data1 : access double;
      stride1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_correlation";

   function gsl_stats_spearman
     (data1 : access double;
      stride1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_double.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_spearman";

   function gsl_stats_variance_m
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_variance_m";

   function gsl_stats_sd_m
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_sd_m";

   function gsl_stats_absdev_m
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_absdev_m";

   function gsl_stats_skew_m_sd
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_skew_m_sd";

   function gsl_stats_kurtosis_m_sd
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_kurtosis_m_sd";

   function gsl_stats_lag1_autocorrelation_m
     (data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_lag1_autocorrelation_m";

   function gsl_stats_covariance_m
     (data1 : access double;
      stride1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_covariance_m";

  -- DEFINED FOR FLOATING POINT TYPES ONLY  
   function gsl_stats_wmean
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wmean";

   function gsl_stats_wvariance
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wvariance";

   function gsl_stats_wsd
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wsd";

   function gsl_stats_wvariance_with_fixed_mean
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wvariance_with_fixed_mean";

   function gsl_stats_wsd_with_fixed_mean
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wsd_with_fixed_mean";

   function gsl_stats_wtss
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wtss";

   function gsl_stats_wtss_m
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wtss_m";

   function gsl_stats_wabsdev
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wabsdev";

   function gsl_stats_wskew
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wskew";

   function gsl_stats_wkurtosis
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wkurtosis";

   function gsl_stats_wvariance_m
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wvariance_m";

   function gsl_stats_wsd_m
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wsd_m";

   function gsl_stats_wabsdev_m
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wabsdev_m";

   function gsl_stats_wskew_m_sd
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wskew_m_sd";

   function gsl_stats_wkurtosis_m_sd
     (w : access double;
      wstride : size_t;
      data : access double;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_wkurtosis_m_sd";

  -- END OF FLOATING POINT TYPES  
   function gsl_stats_pvariance
     (data1 : access double;
      stride1 : size_t;
      n1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_pvariance";

   function gsl_stats_ttest
     (data1 : access double;
      stride1 : size_t;
      n1 : size_t;
      data2 : access double;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ttest";

   function gsl_stats_max
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_max";

   function gsl_stats_min
     (data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_min";

   procedure gsl_stats_minmax
     (min : access double;
      max : access double;
      data : access double;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_double.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_minmax";

   function gsl_stats_max_index
     (data : access double;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_double.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_max_index";

   function gsl_stats_min_index
     (data : access double;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_min_index";

   procedure gsl_stats_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access double;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_double.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_minmax_index";

   function gsl_stats_select
     (data : access double;
      stride : size_t;
      n : size_t;
      k : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_select";

   function gsl_stats_median_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_median_from_sorted_data";

   function gsl_stats_median
     (sorted_data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_median";

   function gsl_stats_quantile_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_double.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_quantile_from_sorted_data";

   function gsl_stats_trmean_from_sorted_data
     (trim : double;
      sorted_data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_trmean_from_sorted_data";

   function gsl_stats_gastwirth_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_double.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_gastwirth_from_sorted_data";

   function gsl_stats_mad0
     (data : access double;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_double.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_mad0";

   function gsl_stats_mad
     (data : access double;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_double.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_mad";

   function gsl_stats_Sn0_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_double.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_Sn0_from_sorted_data";

   function gsl_stats_Sn_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_double.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_Sn_from_sorted_data";

   function gsl_stats_Qn0_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t;
      work : access double;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_double.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_Qn0_from_sorted_data";

   function gsl_stats_Qn_from_sorted_data
     (sorted_data : access double;
      stride : size_t;
      n : size_t;
      work : access double;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_double.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_double_h;
