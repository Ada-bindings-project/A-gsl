pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_statistics_ushort_h is

   function gsl_stats_ushort_mean
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_mean";

   function gsl_stats_ushort_variance
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_variance";

   function gsl_stats_ushort_sd
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_sd";

   function gsl_stats_ushort_variance_with_fixed_mean
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_variance_with_fixed_mean";

   function gsl_stats_ushort_sd_with_fixed_mean
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_sd_with_fixed_mean";

   function gsl_stats_ushort_tss
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_tss";

   function gsl_stats_ushort_tss_m
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_tss_m";

   function gsl_stats_ushort_absdev
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_absdev";

   function gsl_stats_ushort_skew
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_skew";

   function gsl_stats_ushort_kurtosis
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_kurtosis";

   function gsl_stats_ushort_lag1_autocorrelation
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_lag1_autocorrelation";

   function gsl_stats_ushort_covariance
     (data1 : access unsigned_short;
      stride1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_covariance";

   function gsl_stats_ushort_correlation
     (data1 : access unsigned_short;
      stride1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_correlation";

   function gsl_stats_ushort_spearman
     (data1 : access unsigned_short;
      stride1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_spearman";

   function gsl_stats_ushort_variance_m
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_variance_m";

   function gsl_stats_ushort_sd_m
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_sd_m";

   function gsl_stats_ushort_absdev_m
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_absdev_m";

   function gsl_stats_ushort_skew_m_sd
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_skew_m_sd";

   function gsl_stats_ushort_kurtosis_m_sd
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_kurtosis_m_sd";

   function gsl_stats_ushort_lag1_autocorrelation_m
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_lag1_autocorrelation_m";

   function gsl_stats_ushort_covariance_m
     (data1 : access unsigned_short;
      stride1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_covariance_m";

   function gsl_stats_ushort_pvariance
     (data1 : access unsigned_short;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_pvariance";

   function gsl_stats_ushort_ttest
     (data1 : access unsigned_short;
      stride1 : size_t;
      n1 : size_t;
      data2 : access unsigned_short;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_ttest";

   function gsl_stats_ushort_max
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return unsigned_short  -- /usr/include/gsl/gsl_statistics_ushort.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_max";

   function gsl_stats_ushort_min
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return unsigned_short  -- /usr/include/gsl/gsl_statistics_ushort.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_min";

   procedure gsl_stats_ushort_minmax
     (min : access unsigned_short;
      max : access unsigned_short;
      data : access unsigned_short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_ushort.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_minmax";

   function gsl_stats_ushort_max_index
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_ushort.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_max_index";

   function gsl_stats_ushort_min_index
     (data : access unsigned_short;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_ushort.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_min_index";

   procedure gsl_stats_ushort_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access unsigned_short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_ushort.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_minmax_index";

   function gsl_stats_ushort_select
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      k : size_t) return unsigned_short  -- /usr/include/gsl/gsl_statistics_ushort.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_select";

   function gsl_stats_ushort_median_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_median_from_sorted_data";

   function gsl_stats_ushort_median
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_median";

   function gsl_stats_ushort_quantile_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_quantile_from_sorted_data";

   function gsl_stats_ushort_trmean_from_sorted_data
     (trim : double;
      sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_trmean_from_sorted_data";

   function gsl_stats_ushort_gastwirth_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_gastwirth_from_sorted_data";

   function gsl_stats_ushort_mad0
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_mad0";

   function gsl_stats_ushort_mad
     (data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_mad";

   function gsl_stats_ushort_Sn0_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access unsigned_short) return unsigned_short  -- /usr/include/gsl/gsl_statistics_ushort.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_Sn0_from_sorted_data";

   function gsl_stats_ushort_Sn_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access unsigned_short) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_Sn_from_sorted_data";

   function gsl_stats_ushort_Qn0_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access unsigned_short;
      work_int : access int) return unsigned_short  -- /usr/include/gsl/gsl_statistics_ushort.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_Qn0_from_sorted_data";

   function gsl_stats_ushort_Qn_from_sorted_data
     (sorted_data : access unsigned_short;
      stride : size_t;
      n : size_t;
      work : access unsigned_short;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_ushort.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_ushort_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_ushort_h;
