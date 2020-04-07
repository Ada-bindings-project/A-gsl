pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;


package GSL.Low_Level.gsl_gsl_statistics_char_h is

   function gsl_stats_char_mean
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_mean";

   function gsl_stats_char_variance
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_variance";

   function gsl_stats_char_sd
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_sd";

   function gsl_stats_char_variance_with_fixed_mean
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_variance_with_fixed_mean";

   function gsl_stats_char_sd_with_fixed_mean
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_sd_with_fixed_mean";

   function gsl_stats_char_tss
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_tss";

   function gsl_stats_char_tss_m
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_tss_m";

   function gsl_stats_char_absdev
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_absdev";

   function gsl_stats_char_skew
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_skew";

   function gsl_stats_char_kurtosis
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_kurtosis";

   function gsl_stats_char_lag1_autocorrelation
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_lag1_autocorrelation";

   function gsl_stats_char_covariance
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_covariance";

   function gsl_stats_char_correlation
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_correlation";

   function gsl_stats_char_spearman
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_char.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_spearman";

   function gsl_stats_char_variance_m
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_variance_m";

   function gsl_stats_char_sd_m
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_sd_m";

   function gsl_stats_char_absdev_m
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_absdev_m";

   function gsl_stats_char_skew_m_sd
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_skew_m_sd";

   function gsl_stats_char_kurtosis_m_sd
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_kurtosis_m_sd";

   function gsl_stats_char_lag1_autocorrelation_m
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_lag1_autocorrelation_m";

   function gsl_stats_char_covariance_m
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_covariance_m";

   function gsl_stats_char_pvariance
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      n1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_pvariance";

   function gsl_stats_char_ttest
     (data1 : Interfaces.C.Strings.chars_ptr;
      stride1 : size_t;
      n1 : size_t;
      data2 : Interfaces.C.Strings.chars_ptr;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_ttest";

   function gsl_stats_char_max
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return char  -- /usr/include/gsl/gsl_statistics_char.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_max";

   function gsl_stats_char_min
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return char  -- /usr/include/gsl/gsl_statistics_char.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_min";

   procedure gsl_stats_char_minmax
     (min : Interfaces.C.Strings.chars_ptr;
      max : Interfaces.C.Strings.chars_ptr;
      data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_char.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_minmax";

   function gsl_stats_char_max_index
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_char.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_max_index";

   function gsl_stats_char_min_index
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_char.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_min_index";

   procedure gsl_stats_char_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_char.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_minmax_index";

   function gsl_stats_char_select
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      k : size_t) return char  -- /usr/include/gsl/gsl_statistics_char.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_select";

   function gsl_stats_char_median_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_median_from_sorted_data";

   function gsl_stats_char_median
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_median";

   function gsl_stats_char_quantile_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_char.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_quantile_from_sorted_data";

   function gsl_stats_char_trmean_from_sorted_data
     (trim : double;
      sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_trmean_from_sorted_data";

   function gsl_stats_char_gastwirth_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_char.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_gastwirth_from_sorted_data";

   function gsl_stats_char_mad0
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_char.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_mad0";

   function gsl_stats_char_mad
     (data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_char.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_mad";

   function gsl_stats_char_Sn0_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : Interfaces.C.Strings.chars_ptr) return char  -- /usr/include/gsl/gsl_statistics_char.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_Sn0_from_sorted_data";

   function gsl_stats_char_Sn_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : Interfaces.C.Strings.chars_ptr) return double  -- /usr/include/gsl/gsl_statistics_char.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_Sn_from_sorted_data";

   function gsl_stats_char_Qn0_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : Interfaces.C.Strings.chars_ptr;
      work_int : access int) return char  -- /usr/include/gsl/gsl_statistics_char.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_Qn0_from_sorted_data";

   function gsl_stats_char_Qn_from_sorted_data
     (sorted_data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t;
      work : Interfaces.C.Strings.chars_ptr;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_char.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_char_Qn_from_sorted_data";

end GSL.Low_Level.gsl_gsl_statistics_char_h;
