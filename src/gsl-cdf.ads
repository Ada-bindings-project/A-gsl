package GSL.CDF is

   function Ugaussian_P (X : Long_Float) return Long_Float with Inline => True;
   function Ugaussian_Q (X : Long_Float) return Long_Float with Inline => True;
   function Ugaussian_Pinv (P : Long_Float) return Long_Float with Inline => True;
   function Ugaussian_Qinv (Q : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the unit Gaussian distribution.

   function Gaussian_P (X : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Gaussian_Q (X : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Gaussian_Pinv (P : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Gaussian_Qinv (Q : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   --
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Gaussian distribution with standard deviation sigma.


   function Gamma_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gamma_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gamma_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gamma_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the gamma distribution with parameters a and b.


   function Cauchy_P (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Cauchy_Q (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Cauchy_Pinv (P : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Cauchy_Qinv (Q : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   --
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Cauchy distribution with scale parameter a.


   function Laplace_P (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Laplace_Q (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Laplace_Pinv (P : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Laplace_Qinv (Q : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   --
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Laplace distribution with width a.


   function Rayleigh_P (X : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Rayleigh_Q (X : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Rayleigh_Pinv (P : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   function Rayleigh_Qinv (Q : Long_Float; Sigma : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Rayleigh distribution with scale parameter sigma.


   function Chisq_P (X : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Chisq_Q (X : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Chisq_Pinv (P : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Chisq_Qinv (Q : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the chi-squared distribution with nu degrees of freedom.


   function Exponential_P (X : Long_Float; Mu : Long_Float) return Long_Float with Inline => True;
   function Exponential_Q (X : Long_Float; Mu : Long_Float) return Long_Float with Inline => True;
   function Exponential_Pinv (P : Long_Float; Mu : Long_Float) return Long_Float with Inline => True;
   function Exponential_Qinv (Q : Long_Float; Mu : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the exponential distribution with mean mu.

   function Exppow_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Exppow_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  for the exponential power distribution with parameters a and b.


   function Tdist_P (X : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Tdist_Q (X : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Tdist_Pinv (P : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   function Tdist_Qinv (Q : Long_Float; Nu : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the t-distribution with nu degrees of freedom.


   function Fdist_P
     (X   : Long_Float;
      Nu1 : Long_Float;
      Nu2 : Long_Float) return Long_Float with Inline => True;
   function Fdist_Q
     (X   : Long_Float;
      Nu1 : Long_Float;
      Nu2 : Long_Float) return Long_Float with Inline => True;
   function Fdist_Pinv
     (P   : Long_Float;
      Nu1 : Long_Float;
      Nu2 : Long_Float) return Long_Float with Inline => True;
   function Fdist_Qinv
     (Q   : Long_Float;
      Nu1 : Long_Float;
      Nu2 : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the F-distribution with nu1 and nu2 degrees of freedom.

   function Beta_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Beta_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Beta_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Beta_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the beta distribution with parameters a and b.


   function Flat_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Flat_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Flat_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Flat_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for a uniform distribution from a to b.

   function Lognormal_P
     (X     : Long_Float;
      Zeta  : Long_Float;
      Sigma : Long_Float) return Long_Float with Inline => True;
   function Lognormal_Q
     (X     : Long_Float;
      Zeta  : Long_Float;
      Sigma : Long_Float) return Long_Float with Inline => True;
   function Lognormal_Pinv
     (P     : Long_Float;
      Zeta  : Long_Float;
      Sigma : Long_Float) return Long_Float with Inline => True;
   function Lognormal_Qinv
     (Q     : Long_Float;
      Zeta  : Long_Float;
      Sigma : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the lognormal distribution with parameters zeta and sigma.


   function Gumbel1_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel1_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel1_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel1_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Type-1 Gumbel distribution with parameters a and b.

   function Gumbel2_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel2_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel2_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Gumbel2_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Type-2 Gumbel distribution with parameters a and b.

   function Weibull_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Weibull_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Weibull_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Weibull_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Weibull distribution with scale a and exponent b.


   function Pareto_P
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Pareto_Q
     (X : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Pareto_Pinv
     (P : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   function Pareto_Qinv
     (Q : Long_Float;
      A : Long_Float;
      B : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the Pareto distribution with exponent a and scale b.

   function Logistic_P (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Logistic_Q (X : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Logistic_Pinv (P : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   function Logistic_Qinv (Q : Long_Float; A : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(x), Q(x)
   --  and their inverses for the logistic distribution with scale parameter a.


   function Binomial_P
     (K : Natural;
      P : Long_Float;
      N : Natural) return Long_Float with Inline => True;
   function Binomial_Q
     (K : Natural;
      P : Long_Float;
      N : Natural) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the binomial distribution with parameters p and n.


   function Poisson_P (K : Natural; Mu : Long_Float) return Long_Float with Inline => True;
   function Poisson_Q (K : Natural; Mu : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the Poisson distribution with parameter mu.


   function Geometric_P (K : Natural; P : Long_Float) return Long_Float with Inline => True;
   function Geometric_Q (K : Natural; P : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the geometric distribution with parameter p.

   function Negative_Binomial_P
     (K : Natural;
      P : Long_Float;
      N : Long_Float) return Long_Float with Inline => True;
   function Negative_Binomial_Q
     (K : Natural;
      P : Long_Float;
      N : Long_Float) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the negative binomial distribution with parameters p and n.


   function Pascal_P
     (K : Natural;
      P : Long_Float;
      N : Natural) return Long_Float with Inline => True;
   function Pascal_Q
     (K : Natural;
      P : Long_Float;
      N : Natural) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the Pascal distribution with parameters p and n.


   function Hypergeometric_P
     (K  : Natural;
      N1 : Natural;
      N2 : Natural;
      T  : Natural) return Long_Float with Inline => True;
   function Hypergeometric_Q
     (K  : Natural;
      N1 : Natural;
      N2 : Natural;
      T  : Natural) return Long_Float with Inline => True;
   --  These functions compute the cumulative distribution functions P(k), Q(k)
   --  for the hypergeometric distribution with parameters n1, n2 and t.
end GSL.CDF;
