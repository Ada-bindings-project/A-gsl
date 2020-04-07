pragma Ada_2012;
with GSL.Low_Level.Gsl_Gsl_Cdf_H;
with Interfaces.C;
package body GSL.CDF is
   use GSL.Low_Level.Gsl_Gsl_Cdf_H;
   use Interfaces.C;
   -----------------
   -- Ugaussian_P --
   -----------------

   function Ugaussian_P (X : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Ugaussian_P (Double (X)));
   end Ugaussian_P;

   -----------------
   -- Ugaussian_Q --
   -----------------

   function Ugaussian_Q (X : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Ugaussian_Q (Double (X)));
   end Ugaussian_Q;

   --------------------
   -- Ugaussian_Pinv --
   --------------------

   function Ugaussian_Pinv (P : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Ugaussian_Pinv (Double (P)));
   end Ugaussian_Pinv;

   --------------------
   -- Ugaussian_Qinv --
   --------------------

   function Ugaussian_Qinv (Q : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Ugaussian_Qinv (Double (Q)));
   end Ugaussian_Qinv;

   ----------------
   -- Gaussian_P --
   ----------------

   function Gaussian_P (X : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gaussian_P (X => Double (X), Sigma => Double (Sigma)));
   end Gaussian_P;

   ----------------
   -- Gaussian_Q --
   ----------------

   function Gaussian_Q (X : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gaussian_Q (X => Double (X), Sigma => Double (Sigma)));
   end Gaussian_Q;

   -------------------
   -- Gaussian_Pinv --
   -------------------

   function Gaussian_Pinv
     (P : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gaussian_Pinv (P => Double (P), Sigma => Double (Sigma)));
   end Gaussian_Pinv;

   -------------------
   -- Gaussian_Qinv --
   -------------------

   function Gaussian_Qinv
     (Q : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gaussian_Qinv (Q => Double (Q), Sigma => Double (Sigma)));
   end Gaussian_Qinv;

   -------------
   -- Gamma_P --
   -------------

   function Gamma_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gamma_P (X => Double (X), A => Double (A), B => Double (B)));
   end Gamma_P;

   -------------
   -- Gamma_Q --
   -------------

   function Gamma_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gamma_Q (X => Double (X), A => Double (A), B => Double (B)));
   end Gamma_Q;

   ----------------
   -- Gamma_Pinv --
   ----------------

   function Gamma_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gamma_Pinv (P => Double (P), A => Double (A), B => Double (B)));
   end Gamma_Pinv;

   ----------------
   -- Gamma_Qinv --
   ----------------

   function Gamma_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Gamma_Qinv (Q => Double (Q), A => Double (A), B => Double (B)));
   end Gamma_Qinv;

   --------------
   -- Cauchy_P --
   --------------

   function Cauchy_P (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Cauchy_P (X => Double (X), A => Double (A)));
   end Cauchy_P;

   --------------
   -- Cauchy_Q --
   --------------

   function Cauchy_Q (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Cauchy_Q (X => Double (X), A => Double (A)));
   end Cauchy_Q;

   -----------------
   -- Cauchy_Pinv --
   -----------------

   function Cauchy_Pinv (P : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Cauchy_Pinv (P => Double (P), A => Double (A)));
   end Cauchy_Pinv;

   -----------------
   -- Cauchy_Qinv --
   -----------------

   function Cauchy_Qinv (Q : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Cauchy_Qinv (Q => Double (Q), A => Double (A)));
   end Cauchy_Qinv;

   ---------------
   -- Laplace_P --
   ---------------

   function Laplace_P (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Laplace_P (X => Double (X), A => Double (A)));
   end Laplace_P;

   ---------------
   -- Laplace_Q --
   ---------------

   function Laplace_Q (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Laplace_Q (X => Double (X), A => Double (A)));
   end Laplace_Q;

   ------------------
   -- Laplace_Pinv --
   ------------------

   function Laplace_Pinv (P : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Laplace_Pinv (P => Double (P), A => Double (A)));
   end Laplace_Pinv;

   ------------------
   -- Laplace_Qinv --
   ------------------

   function Laplace_Qinv (Q : Long_Float; A : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Laplace_Qinv (Q => Double (Q), A => Double (A)));
   end Laplace_Qinv;

   ----------------
   -- Rayleigh_P --
   ----------------

   function Rayleigh_P (X : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Rayleigh_P (X => Double (X), Sigma => Double (Sigma )));
   end Rayleigh_P;

   ----------------
   -- Rayleigh_Q --
   ----------------

   function Rayleigh_Q (X : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Rayleigh_Q (X => Double (X), Sigma => Double (Sigma )));
   end Rayleigh_Q;

   -------------------
   -- Rayleigh_Pinv --
   -------------------

   function Rayleigh_Pinv
     (P : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Rayleigh_Pinv (P => Double (P), Sigma => Double (Sigma )));
   end Rayleigh_Pinv;

   -------------------
   -- Rayleigh_Qinv --
   -------------------

   function Rayleigh_Qinv
     (Q : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Rayleigh_Qinv (Q => Double (Q), Sigma => Double (Sigma )));
   end Rayleigh_Qinv;

   -------------
   -- Chisq_P --
   -------------

   function Chisq_P (X : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Chisq_P (X => Double (X), Nu => Double (Nu)));
   end Chisq_P;

   -------------
   -- Chisq_Q --
   -------------

   function Chisq_Q (X : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Chisq_Q (X => Double (X), Nu => Double (Nu)));
   end Chisq_Q;

   ----------------
   -- Chisq_Pinv --
   ----------------

   function Chisq_Pinv (P : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Chisq_Pinv (P => Double (P), Nu => Double (Nu)));
   end Chisq_Pinv;

   ----------------
   -- Chisq_Qinv --
   ----------------

   function Chisq_Qinv (Q : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Chisq_Qinv (Q => Double (Q), Nu => Double (Nu)));
   end Chisq_Qinv;

   -------------------
   -- Exponential_P --
   -------------------

   function Exponential_P (X : Long_Float; Mu : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exponential_P (X => Double (X), Mu => Double (Mu)));
   end Exponential_P;

   -------------------
   -- Exponential_Q --
   -------------------

   function Exponential_Q (X : Long_Float; Mu : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exponential_Q (X => Double (X), Mu => Double (Mu)));
   end Exponential_Q;

   ----------------------
   -- Exponential_Pinv --
   ----------------------

   function Exponential_Pinv
     (P : Long_Float; Mu : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exponential_Pinv (P => Double (P), Mu => Double (Mu)));
   end Exponential_Pinv;

   ----------------------
   -- Exponential_Qinv --
   ----------------------

   function Exponential_Qinv
     (Q : Long_Float; Mu : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exponential_Qinv (Q => Double (Q), Mu => Double (Mu)));
   end Exponential_Qinv;

   --------------
   -- Exppow_P --
   --------------

   function Exppow_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exppow_P (X => Double (X), A => Double (A), B => Double (B)));
   end Exppow_P;

   --------------
   -- Exppow_Q --
   --------------

   function Exppow_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      return Long_Float (Gsl_Cdf_Exppow_Q (X => Double (X), A => Double (A), B => Double (B)));
   end Exppow_Q;

   -------------
   -- Tdist_P --
   -------------

   function Tdist_P (X : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Tdist_P (X => Double (X), Nu => Double (Nu)));
   end Tdist_P;

   -------------
   -- Tdist_Q --
   -------------

   function Tdist_Q (X : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Tdist_Q (X => Double (X), Nu => Double (Nu)));
   end Tdist_Q;

   ----------------
   -- Tdist_Pinv --
   ----------------

   function Tdist_Pinv (P : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Tdist_Pinv (P => Double (P), Nu => Double (Nu)));
   end Tdist_Pinv;

   ----------------
   -- Tdist_Qinv --
   ----------------

   function Tdist_Qinv (Q : Long_Float; Nu : Long_Float) return Long_Float is
   begin
      return Long_Float (Gsl_Cdf_Tdist_Qinv (Q => Double (Q), Nu => Double (Nu)));
   end Tdist_Qinv;

   -------------
   -- Fdist_P --
   -------------

   function Fdist_P
     (X : Long_Float; Nu1 : Long_Float; Nu2 : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fdist_P unimplemented");
      return raise Program_Error with "Unimplemented function Fdist_P";
   end Fdist_P;

   -------------
   -- Fdist_Q --
   -------------

   function Fdist_Q
     (X : Long_Float; Nu1 : Long_Float; Nu2 : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fdist_Q unimplemented");
      return raise Program_Error with "Unimplemented function Fdist_Q";
   end Fdist_Q;

   ----------------
   -- Fdist_Pinv --
   ----------------

   function Fdist_Pinv
     (P : Long_Float; Nu1 : Long_Float; Nu2 : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fdist_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Fdist_Pinv";
   end Fdist_Pinv;

   ----------------
   -- Fdist_Qinv --
   ----------------

   function Fdist_Qinv
     (Q : Long_Float; Nu1 : Long_Float; Nu2 : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fdist_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Fdist_Qinv";
   end Fdist_Qinv;

   ------------
   -- Beta_P --
   ------------

   function Beta_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Beta_P unimplemented");
      return raise Program_Error with "Unimplemented function Beta_P";
   end Beta_P;

   ------------
   -- Beta_Q --
   ------------

   function Beta_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Beta_Q unimplemented");
      return raise Program_Error with "Unimplemented function Beta_Q";
   end Beta_Q;

   ---------------
   -- Beta_Pinv --
   ---------------

   function Beta_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Beta_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Beta_Pinv";
   end Beta_Pinv;

   ---------------
   -- Beta_Qinv --
   ---------------

   function Beta_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Beta_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Beta_Qinv";
   end Beta_Qinv;

   ------------
   -- Flat_P --
   ------------

   function Flat_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Flat_P unimplemented");
      return raise Program_Error with "Unimplemented function Flat_P";
   end Flat_P;

   ------------
   -- Flat_Q --
   ------------

   function Flat_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Flat_Q unimplemented");
      return raise Program_Error with "Unimplemented function Flat_Q";
   end Flat_Q;

   ---------------
   -- Flat_Pinv --
   ---------------

   function Flat_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Flat_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Flat_Pinv";
   end Flat_Pinv;

   ---------------
   -- Flat_Qinv --
   ---------------

   function Flat_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Flat_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Flat_Qinv";
   end Flat_Qinv;

   -----------------
   -- Lognormal_P --
   -----------------

   function Lognormal_P
     (X : Long_Float; Zeta : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Lognormal_P unimplemented");
      return raise Program_Error with "Unimplemented function Lognormal_P";
   end Lognormal_P;

   -----------------
   -- Lognormal_Q --
   -----------------

   function Lognormal_Q
     (X : Long_Float; Zeta : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Lognormal_Q unimplemented");
      return raise Program_Error with "Unimplemented function Lognormal_Q";
   end Lognormal_Q;

   --------------------
   -- Lognormal_Pinv --
   --------------------

   function Lognormal_Pinv
     (P : Long_Float; Zeta : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Lognormal_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Lognormal_Pinv";
   end Lognormal_Pinv;

   --------------------
   -- Lognormal_Qinv --
   --------------------

   function Lognormal_Qinv
     (Q : Long_Float; Zeta : Long_Float; Sigma : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Lognormal_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Lognormal_Qinv";
   end Lognormal_Qinv;

   ---------------
   -- Gumbel1_P --
   ---------------

   function Gumbel1_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Gumbel1_P unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel1_P";
   end Gumbel1_P;

   ---------------
   -- Gumbel1_Q --
   ---------------

   function Gumbel1_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Gumbel1_Q unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel1_Q";
   end Gumbel1_Q;

   ------------------
   -- Gumbel1_Pinv --
   ------------------

   function Gumbel1_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Gumbel1_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel1_Pinv";
   end Gumbel1_Pinv;

   ------------------
   -- Gumbel1_Qinv --
   ------------------

   function Gumbel1_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Gumbel1_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel1_Qinv";
   end Gumbel1_Qinv;

   ---------------
   -- Gumbel2_P --
   ---------------

   function Gumbel2_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Gumbel2_P unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel2_P";
   end Gumbel2_P;

   ---------------
   -- Gumbel2_Q --
   ---------------

   function Gumbel2_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Gumbel2_Q unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel2_Q";
   end Gumbel2_Q;

   ------------------
   -- Gumbel2_Pinv --
   ------------------

   function Gumbel2_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Gumbel2_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel2_Pinv";
   end Gumbel2_Pinv;

   ------------------
   -- Gumbel2_Qinv --
   ------------------

   function Gumbel2_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Gumbel2_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Gumbel2_Qinv";
   end Gumbel2_Qinv;

   ---------------
   -- Weibull_P --
   ---------------

   function Weibull_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Weibull_P unimplemented");
      return raise Program_Error with "Unimplemented function Weibull_P";
   end Weibull_P;

   ---------------
   -- Weibull_Q --
   ---------------

   function Weibull_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Weibull_Q unimplemented");
      return raise Program_Error with "Unimplemented function Weibull_Q";
   end Weibull_Q;

   ------------------
   -- Weibull_Pinv --
   ------------------

   function Weibull_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Weibull_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Weibull_Pinv";
   end Weibull_Pinv;

   ------------------
   -- Weibull_Qinv --
   ------------------

   function Weibull_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Weibull_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Weibull_Qinv";
   end Weibull_Qinv;

   --------------
   -- Pareto_P --
   --------------

   function Pareto_P
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pareto_P unimplemented");
      return raise Program_Error with "Unimplemented function Pareto_P";
   end Pareto_P;

   --------------
   -- Pareto_Q --
   --------------

   function Pareto_Q
     (X : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pareto_Q unimplemented");
      return raise Program_Error with "Unimplemented function Pareto_Q";
   end Pareto_Q;

   -----------------
   -- Pareto_Pinv --
   -----------------

   function Pareto_Pinv
     (P : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pareto_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Pareto_Pinv";
   end Pareto_Pinv;

   -----------------
   -- Pareto_Qinv --
   -----------------

   function Pareto_Qinv
     (Q : Long_Float; A : Long_Float; B : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pareto_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Pareto_Qinv";
   end Pareto_Qinv;

   ----------------
   -- Logistic_P --
   ----------------

   function Logistic_P (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Logistic_P unimplemented");
      return raise Program_Error with "Unimplemented function Logistic_P";
   end Logistic_P;

   ----------------
   -- Logistic_Q --
   ----------------

   function Logistic_Q (X : Long_Float; A : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Logistic_Q unimplemented");
      return raise Program_Error with "Unimplemented function Logistic_Q";
   end Logistic_Q;

   -------------------
   -- Logistic_Pinv --
   -------------------

   function Logistic_Pinv (P : Long_Float; A : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Logistic_Pinv unimplemented");
      return raise Program_Error with "Unimplemented function Logistic_Pinv";
   end Logistic_Pinv;

   -------------------
   -- Logistic_Qinv --
   -------------------

   function Logistic_Qinv (Q : Long_Float; A : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Logistic_Qinv unimplemented");
      return raise Program_Error with "Unimplemented function Logistic_Qinv";
   end Logistic_Qinv;

   ----------------
   -- Binomial_P --
   ----------------

   function Binomial_P
     (K : Natural; P : Long_Float; N : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Binomial_P unimplemented");
      return raise Program_Error with "Unimplemented function Binomial_P";
   end Binomial_P;

   ----------------
   -- Binomial_Q --
   ----------------

   function Binomial_Q
     (K : Natural; P : Long_Float; N : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Binomial_Q unimplemented");
      return raise Program_Error with "Unimplemented function Binomial_Q";
   end Binomial_Q;

   ---------------
   -- Poisson_P --
   ---------------

   function Poisson_P (K : Natural; Mu : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Poisson_P unimplemented");
      return raise Program_Error with "Unimplemented function Poisson_P";
   end Poisson_P;

   ---------------
   -- Poisson_Q --
   ---------------

   function Poisson_Q (K : Natural; Mu : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Poisson_Q unimplemented");
      return raise Program_Error with "Unimplemented function Poisson_Q";
   end Poisson_Q;

   -----------------
   -- Geometric_P --
   -----------------

   function Geometric_P (K : Natural; P : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Geometric_P unimplemented");
      return raise Program_Error with "Unimplemented function Geometric_P";
   end Geometric_P;

   -----------------
   -- Geometric_Q --
   -----------------

   function Geometric_Q (K : Natural; P : Long_Float) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Geometric_Q unimplemented");
      return raise Program_Error with "Unimplemented function Geometric_Q";
   end Geometric_Q;

   -------------------------
   -- Negative_Binomial_P --
   -------------------------

   function Negative_Binomial_P
     (K : Natural; P : Long_Float; N : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Negative_Binomial_P unimplemented");
      return
      raise Program_Error with "Unimplemented function Negative_Binomial_P";
   end Negative_Binomial_P;

   -------------------------
   -- Negative_Binomial_Q --
   -------------------------

   function Negative_Binomial_Q
     (K : Natural; P : Long_Float; N : Long_Float) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Negative_Binomial_Q unimplemented");
      return
      raise Program_Error with "Unimplemented function Negative_Binomial_Q";
   end Negative_Binomial_Q;

   --------------
   -- Pascal_P --
   --------------

   function Pascal_P
     (K : Natural; P : Long_Float; N : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pascal_P unimplemented");
      return raise Program_Error with "Unimplemented function Pascal_P";
   end Pascal_P;

   --------------
   -- Pascal_Q --
   --------------

   function Pascal_Q
     (K : Natural; P : Long_Float; N : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pascal_Q unimplemented");
      return raise Program_Error with "Unimplemented function Pascal_Q";
   end Pascal_Q;

   ----------------------
   -- Hypergeometric_P --
   ----------------------

   function Hypergeometric_P
     (K : Natural; N1 : Natural; N2 : Natural; T : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Hypergeometric_P unimplemented");
      return
      raise Program_Error with "Unimplemented function Hypergeometric_P";
   end Hypergeometric_P;

   ----------------------
   -- Hypergeometric_Q --
   ----------------------

   function Hypergeometric_Q
     (K : Natural; N1 : Natural; N2 : Natural; T : Natural) return Long_Float
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Hypergeometric_Q unimplemented");
      return
      raise Program_Error with "Unimplemented function Hypergeometric_Q";
   end Hypergeometric_Q;

end GSL.CDF;
