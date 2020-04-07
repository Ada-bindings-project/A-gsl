pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_short_h is

   function gsl_stats_short_mean
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_mean";

   function gsl_stats_short_variance
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_variance";

   function gsl_stats_short_sd
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_sd";

   function gsl_stats_short_variance_with_fixed_mean
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_variance_with_fixed_mean";

   function gsl_stats_short_sd_with_fixed_mean
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_sd_with_fixed_mean";

   function gsl_stats_short_tss
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_tss";

   function gsl_stats_short_tss_m
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_tss_m";

   function gsl_stats_short_absdev
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_absdev";

   function gsl_stats_short_skew
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_skew";

   function gsl_stats_short_kurtosis
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_kurtosis";

   function gsl_stats_short_lag1_autocorrelation
     (data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_lag1_autocorrelation";

   function gsl_stats_short_covariance
     (data1 : access short;
      stride1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_covariance";

   function gsl_stats_short_correlation
     (data1 : access short;
      stride1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_correlation";

   function gsl_stats_short_spearman
     (data1 : access short;
      stride1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_short.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_spearman";

   function gsl_stats_short_variance_m
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_variance_m";

   function gsl_stats_short_sd_m
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_sd_m";

   function gsl_stats_short_absdev_m
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_absdev_m";

   function gsl_stats_short_skew_m_sd
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_skew_m_sd";

   function gsl_stats_short_kurtosis_m_sd
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_kurtosis_m_sd";

   function gsl_stats_short_lag1_autocorrelation_m
     (data : access short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_lag1_autocorrelation_m";

   function gsl_stats_short_covariance_m
     (data1 : access short;
      stride1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_covariance_m";

   function gsl_stats_short_pvariance
     (data1 : access short;
      stride1 : size_t;
      n1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_pvariance";

   function gsl_stats_short_ttest
     (data1 : access short;
      stride1 : size_t;
      n1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_ttest";

   function gsl_stats_short_max
     (data : access short;
      stride : size_t;
      n : size_t) return short  -- /usr/include/gsl/gsl_statistics_short.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_max";

   function gsl_stats_short_min
     (data : access short;
      stride : size_t;
      n : size_t) return short  -- /usr/include/gsl/gsl_statistics_short.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_min";

   procedure gsl_stats_short_minmax
     (min : access short;
      max : access short;
      data : access short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_short.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_minmax";

   function gsl_stats_short_max_index
     (data : access short;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_short.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_max_index";

   function gsl_stats_short_min_index
     (data : access short;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_short.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_min_index";

   procedure gsl_stats_short_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_short.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_minmax_index";

   function gsl_stats_short_select
     (data : access short;
      stride : size_t;
      n : size_t;
      k : size_t) return short  -- /usr/include/gsl/gsl_statistics_short.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_select";

   function gsl_stats_short_median_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_median_from_sorted_data";

   function gsl_stats_short_median
     (sorted_data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_median";

   function gsl_stats_short_quantile_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_short.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_quantile_from_sorted_data";

   function gsl_stats_short_trmean_from_sorted_data
     (trim : double;
      sorted_data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_trmean_from_sorted_data";

   function gsl_stats_short_gastwirth_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_short.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_gastwirth_from_sorted_data";

   function gsl_stats_short_mad0
     (data : access short;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_short.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_mad0";

   function gsl_stats_short_mad
     (data : access short;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_short.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_mad";

   function gsl_stats_short_Sn0_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t;
      work : access short) return short  -- /usr/include/gsl/gsl_statistics_short.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_Sn0_from_sorted_data";

   function gsl_stats_short_Sn_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t;
      work : access short) return double  -- /usr/include/gsl/gsl_statistics_short.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_Sn_from_sorted_data";

   function gsl_stats_short_Qn0_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t;
      work : access short;
      work_int : access int) return short  -- /usr/include/gsl/gsl_statistics_short.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_Qn0_from_sorted_data";

   function gsl_stats_short_Qn_from_sorted_data
     (sorted_data : access short;
      stride : size_t;
      n : size_t;
      work : access short;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_short.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_short_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_short_h;
