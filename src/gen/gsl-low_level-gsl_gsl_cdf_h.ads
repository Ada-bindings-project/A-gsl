pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_cdf_h is

   function gsl_cdf_ugaussian_P (x : double) return double  -- /usr/include/gsl/gsl_cdf.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_ugaussian_P";

   function gsl_cdf_ugaussian_Q (x : double) return double  -- /usr/include/gsl/gsl_cdf.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_ugaussian_Q";

   function gsl_cdf_ugaussian_Pinv (P : double) return double  -- /usr/include/gsl/gsl_cdf.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_ugaussian_Pinv";

   function gsl_cdf_ugaussian_Qinv (Q : double) return double  -- /usr/include/gsl/gsl_cdf.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_ugaussian_Qinv";

   function gsl_cdf_gaussian_P (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gaussian_P";

   function gsl_cdf_gaussian_Q (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gaussian_Q";

   function gsl_cdf_gaussian_Pinv (P : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gaussian_Pinv";

   function gsl_cdf_gaussian_Qinv (Q : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gaussian_Qinv";

   function gsl_cdf_gamma_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gamma_P";

   function gsl_cdf_gamma_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gamma_Q";

   function gsl_cdf_gamma_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gamma_Pinv";

   function gsl_cdf_gamma_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gamma_Qinv";

   function gsl_cdf_cauchy_P (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_cauchy_P";

   function gsl_cdf_cauchy_Q (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_cauchy_Q";

   function gsl_cdf_cauchy_Pinv (P : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_cauchy_Pinv";

   function gsl_cdf_cauchy_Qinv (Q : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_cauchy_Qinv";

   function gsl_cdf_laplace_P (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_laplace_P";

   function gsl_cdf_laplace_Q (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_laplace_Q";

   function gsl_cdf_laplace_Pinv (P : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_laplace_Pinv";

   function gsl_cdf_laplace_Qinv (Q : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_laplace_Qinv";

   function gsl_cdf_rayleigh_P (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_rayleigh_P";

   function gsl_cdf_rayleigh_Q (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_rayleigh_Q";

   function gsl_cdf_rayleigh_Pinv (P : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_rayleigh_Pinv";

   function gsl_cdf_rayleigh_Qinv (Q : double; sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_rayleigh_Qinv";

   function gsl_cdf_chisq_P (x : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_chisq_P";

   function gsl_cdf_chisq_Q (x : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_chisq_Q";

   function gsl_cdf_chisq_Pinv (P : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_chisq_Pinv";

   function gsl_cdf_chisq_Qinv (Q : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_chisq_Qinv";

   function gsl_cdf_exponential_P (x : double; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exponential_P";

   function gsl_cdf_exponential_Q (x : double; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exponential_Q";

   function gsl_cdf_exponential_Pinv (P : double; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exponential_Pinv";

   function gsl_cdf_exponential_Qinv (Q : double; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exponential_Qinv";

   function gsl_cdf_exppow_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exppow_P";

   function gsl_cdf_exppow_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_exppow_Q";

   function gsl_cdf_tdist_P (x : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_tdist_P";

   function gsl_cdf_tdist_Q (x : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_tdist_Q";

   function gsl_cdf_tdist_Pinv (P : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_tdist_Pinv";

   function gsl_cdf_tdist_Qinv (Q : double; nu : double) return double  -- /usr/include/gsl/gsl_cdf.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_tdist_Qinv";

   function gsl_cdf_fdist_P
     (x : double;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_cdf.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_fdist_P";

   function gsl_cdf_fdist_Q
     (x : double;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_cdf.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_fdist_Q";

   function gsl_cdf_fdist_Pinv
     (P : double;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_cdf.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_fdist_Pinv";

   function gsl_cdf_fdist_Qinv
     (Q : double;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_cdf.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_fdist_Qinv";

   function gsl_cdf_beta_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_beta_P";

   function gsl_cdf_beta_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_beta_Q";

   function gsl_cdf_beta_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_beta_Pinv";

   function gsl_cdf_beta_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_beta_Qinv";

   function gsl_cdf_flat_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_flat_P";

   function gsl_cdf_flat_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_flat_Q";

   function gsl_cdf_flat_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_flat_Pinv";

   function gsl_cdf_flat_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_flat_Qinv";

   function gsl_cdf_lognormal_P
     (x : double;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_lognormal_P";

   function gsl_cdf_lognormal_Q
     (x : double;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_lognormal_Q";

   function gsl_cdf_lognormal_Pinv
     (P : double;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_lognormal_Pinv";

   function gsl_cdf_lognormal_Qinv
     (Q : double;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_cdf.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_lognormal_Qinv";

   function gsl_cdf_gumbel1_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel1_P";

   function gsl_cdf_gumbel1_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel1_Q";

   function gsl_cdf_gumbel1_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel1_Pinv";

   function gsl_cdf_gumbel1_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel1_Qinv";

   function gsl_cdf_gumbel2_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel2_P";

   function gsl_cdf_gumbel2_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel2_Q";

   function gsl_cdf_gumbel2_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel2_Pinv";

   function gsl_cdf_gumbel2_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_gumbel2_Qinv";

   function gsl_cdf_weibull_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_weibull_P";

   function gsl_cdf_weibull_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_weibull_Q";

   function gsl_cdf_weibull_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_weibull_Pinv";

   function gsl_cdf_weibull_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_weibull_Qinv";

   function gsl_cdf_pareto_P
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pareto_P";

   function gsl_cdf_pareto_Q
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pareto_Q";

   function gsl_cdf_pareto_Pinv
     (P : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pareto_Pinv";

   function gsl_cdf_pareto_Qinv
     (Q : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_cdf.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pareto_Qinv";

   function gsl_cdf_logistic_P (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_logistic_P";

   function gsl_cdf_logistic_Q (x : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_logistic_Q";

   function gsl_cdf_logistic_Pinv (P : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_logistic_Pinv";

   function gsl_cdf_logistic_Qinv (Q : double; a : double) return double  -- /usr/include/gsl/gsl_cdf.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_logistic_Qinv";

   function gsl_cdf_binomial_P
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_binomial_P";

   function gsl_cdf_binomial_Q
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_binomial_Q";

   function gsl_cdf_poisson_P (k : unsigned; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_poisson_P";

   function gsl_cdf_poisson_Q (k : unsigned; mu : double) return double  -- /usr/include/gsl/gsl_cdf.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_poisson_Q";

   function gsl_cdf_geometric_P (k : unsigned; p : double) return double  -- /usr/include/gsl/gsl_cdf.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_geometric_P";

   function gsl_cdf_geometric_Q (k : unsigned; p : double) return double  -- /usr/include/gsl/gsl_cdf.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_geometric_Q";

   function gsl_cdf_negative_binomial_P
     (k : unsigned;
      p : double;
      n : double) return double  -- /usr/include/gsl/gsl_cdf.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_negative_binomial_P";

   function gsl_cdf_negative_binomial_Q
     (k : unsigned;
      p : double;
      n : double) return double  -- /usr/include/gsl/gsl_cdf.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_negative_binomial_Q";

   function gsl_cdf_pascal_P
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pascal_P";

   function gsl_cdf_pascal_Q
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_pascal_Q";

   function gsl_cdf_hypergeometric_P
     (k : unsigned;
      n1 : unsigned;
      n2 : unsigned;
      t : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_hypergeometric_P";

   function gsl_cdf_hypergeometric_Q
     (k : unsigned;
      n1 : unsigned;
      n2 : unsigned;
      t : unsigned) return double  -- /usr/include/gsl/gsl_cdf.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cdf_hypergeometric_Q";

end GSL.Low_Level.gsl_gsl_cdf_h;
