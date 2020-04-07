pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_long_h is

   function gsl_stats_long_mean
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_mean";

   function gsl_stats_long_variance
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_variance";

   function gsl_stats_long_sd
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_sd";

   function gsl_stats_long_variance_with_fixed_mean
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_variance_with_fixed_mean";

   function gsl_stats_long_sd_with_fixed_mean
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_sd_with_fixed_mean";

   function gsl_stats_long_tss
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_tss";

   function gsl_stats_long_tss_m
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_tss_m";

   function gsl_stats_long_absdev
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_absdev";

   function gsl_stats_long_skew
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_skew";

   function gsl_stats_long_kurtosis
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_kurtosis";

   function gsl_stats_long_lag1_autocorrelation
     (data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_lag1_autocorrelation";

   function gsl_stats_long_covariance
     (data1 : access long;
      stride1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_covariance";

   function gsl_stats_long_correlation
     (data1 : access long;
      stride1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_correlation";

   function gsl_stats_long_spearman
     (data1 : access long;
      stride1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_long.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_spearman";

   function gsl_stats_long_variance_m
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_variance_m";

   function gsl_stats_long_sd_m
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_sd_m";

   function gsl_stats_long_absdev_m
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_absdev_m";

   function gsl_stats_long_skew_m_sd
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_skew_m_sd";

   function gsl_stats_long_kurtosis_m_sd
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_kurtosis_m_sd";

   function gsl_stats_long_lag1_autocorrelation_m
     (data : access long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_lag1_autocorrelation_m";

   function gsl_stats_long_covariance_m
     (data1 : access long;
      stride1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_covariance_m";

   function gsl_stats_long_pvariance
     (data1 : access long;
      stride1 : size_t;
      n1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_pvariance";

   function gsl_stats_long_ttest
     (data1 : access long;
      stride1 : size_t;
      n1 : size_t;
      data2 : access long;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_ttest";

   function gsl_stats_long_max
     (data : access long;
      stride : size_t;
      n : size_t) return long  -- /usr/include/gsl/gsl_statistics_long.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_max";

   function gsl_stats_long_min
     (data : access long;
      stride : size_t;
      n : size_t) return long  -- /usr/include/gsl/gsl_statistics_long.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_min";

   procedure gsl_stats_long_minmax
     (min : access long;
      max : access long;
      data : access long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_long.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_minmax";

   function gsl_stats_long_max_index
     (data : access long;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_long.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_max_index";

   function gsl_stats_long_min_index
     (data : access long;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_long.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_min_index";

   procedure gsl_stats_long_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_long.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_minmax_index";

   function gsl_stats_long_select
     (data : access long;
      stride : size_t;
      n : size_t;
      k : size_t) return long  -- /usr/include/gsl/gsl_statistics_long.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_select";

   function gsl_stats_long_median_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_median_from_sorted_data";

   function gsl_stats_long_median
     (sorted_data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_median";

   function gsl_stats_long_quantile_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_long.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_quantile_from_sorted_data";

   function gsl_stats_long_trmean_from_sorted_data
     (trim : double;
      sorted_data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_trmean_from_sorted_data";

   function gsl_stats_long_gastwirth_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_long.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_gastwirth_from_sorted_data";

   function gsl_stats_long_mad0
     (data : access long;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_long.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_mad0";

   function gsl_stats_long_mad
     (data : access long;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_long.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_mad";

   function gsl_stats_long_Sn0_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t;
      work : access long) return long  -- /usr/include/gsl/gsl_statistics_long.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_Sn0_from_sorted_data";

   function gsl_stats_long_Sn_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t;
      work : access long) return double  -- /usr/include/gsl/gsl_statistics_long.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_Sn_from_sorted_data";

   function gsl_stats_long_Qn0_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t;
      work : access long;
      work_int : access int) return long  -- /usr/include/gsl/gsl_statistics_long.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_Qn0_from_sorted_data";

   function gsl_stats_long_Qn_from_sorted_data
     (sorted_data : access long;
      stride : size_t;
      n : size_t;
      work : access long;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_long.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_long_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_long_h;
