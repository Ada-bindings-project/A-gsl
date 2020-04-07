pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_ulong_h is

   function gsl_stats_ulong_mean
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_mean";

   function gsl_stats_ulong_variance
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_variance";

   function gsl_stats_ulong_sd
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_sd";

   function gsl_stats_ulong_variance_with_fixed_mean
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_variance_with_fixed_mean";

   function gsl_stats_ulong_sd_with_fixed_mean
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_sd_with_fixed_mean";

   function gsl_stats_ulong_tss
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_tss";

   function gsl_stats_ulong_tss_m
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_tss_m";

   function gsl_stats_ulong_absdev
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_absdev";

   function gsl_stats_ulong_skew
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_skew";

   function gsl_stats_ulong_kurtosis
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_kurtosis";

   function gsl_stats_ulong_lag1_autocorrelation
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_lag1_autocorrelation";

   function gsl_stats_ulong_covariance
     (data1 : access unsigned_long;
      stride1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_covariance";

   function gsl_stats_ulong_correlation
     (data1 : access unsigned_long;
      stride1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_correlation";

   function gsl_stats_ulong_spearman
     (data1 : access unsigned_long;
      stride1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_spearman";

   function gsl_stats_ulong_variance_m
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_variance_m";

   function gsl_stats_ulong_sd_m
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_sd_m";

   function gsl_stats_ulong_absdev_m
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_absdev_m";

   function gsl_stats_ulong_skew_m_sd
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_skew_m_sd";

   function gsl_stats_ulong_kurtosis_m_sd
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_kurtosis_m_sd";

   function gsl_stats_ulong_lag1_autocorrelation_m
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_lag1_autocorrelation_m";

   function gsl_stats_ulong_covariance_m
     (data1 : access unsigned_long;
      stride1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_covariance_m";

   function gsl_stats_ulong_pvariance
     (data1 : access unsigned_long;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_pvariance";

   function gsl_stats_ulong_ttest
     (data1 : access unsigned_long;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_long;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_ttest";

   function gsl_stats_ulong_max
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return unsigned_long  -- /usr/include/gsl/gsl_statistics_ulong.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_max";

   function gsl_stats_ulong_min
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return unsigned_long  -- /usr/include/gsl/gsl_statistics_ulong.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_min";

   procedure gsl_stats_ulong_minmax
     (min : access unsigned_long;
      max : access unsigned_long;
      data : access unsigned_long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_ulong.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_minmax";

   function gsl_stats_ulong_max_index
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_ulong.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_max_index";

   function gsl_stats_ulong_min_index
     (data : access unsigned_long;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_ulong.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_min_index";

   procedure gsl_stats_ulong_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access unsigned_long;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_ulong.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_minmax_index";

   function gsl_stats_ulong_select
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      k : size_t) return unsigned_long  -- /usr/include/gsl/gsl_statistics_ulong.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_select";

   function gsl_stats_ulong_median_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_median_from_sorted_data";

   function gsl_stats_ulong_median
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_median";

   function gsl_stats_ulong_quantile_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_quantile_from_sorted_data";

   function gsl_stats_ulong_trmean_from_sorted_data
     (trim : double;
      sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_trmean_from_sorted_data";

   function gsl_stats_ulong_gastwirth_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_gastwirth_from_sorted_data";

   function gsl_stats_ulong_mad0
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_mad0";

   function gsl_stats_ulong_mad
     (data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_mad";

   function gsl_stats_ulong_Sn0_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access unsigned_long) return unsigned_long  -- /usr/include/gsl/gsl_statistics_ulong.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_Sn0_from_sorted_data";

   function gsl_stats_ulong_Sn_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access unsigned_long) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_Sn_from_sorted_data";

   function gsl_stats_ulong_Qn0_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access unsigned_long;
      work_int : access int) return unsigned_long  -- /usr/include/gsl/gsl_statistics_ulong.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_Qn0_from_sorted_data";

   function gsl_stats_ulong_Qn_from_sorted_data
     (sorted_data : access unsigned_long;
      stride : size_t;
      n : size_t;
      work : access unsigned_long;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_ulong.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ulong_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_ulong_h;
