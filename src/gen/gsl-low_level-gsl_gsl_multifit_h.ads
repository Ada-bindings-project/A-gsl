pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multifit_h is

  -- multifit/gsl_multifit.h
  -- * 
  -- * Copyright (C) 2000, 2007, 2010 Brian Gough
  -- * Copyright (C) 2013, Patrick Alken
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

  -- maximum number of observations  
  -- maximum number of parameters  
  -- number of observations in current SVD decomposition  
  -- number of parameters in current SVD decomposition  
  -- least squares matrix for SVD, n-by-p  
  -- reciprocal condition number  
   type gsl_multifit_linear_workspace is record
      nmax : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:44
      pmax : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:45
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:46
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:47
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:48
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:49
      QSI : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:50
      S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:51
      t : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:52
      xt : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:53
      D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:54
      rcond : aliased double;  -- /usr/include/gsl/gsl_multifit.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:57

   function gsl_multifit_linear_alloc (arg1 : size_t; arg2 : size_t) return access gsl_multifit_linear_workspace  -- /usr/include/gsl/gsl_multifit.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_alloc";

   procedure gsl_multifit_linear_free (w : access gsl_multifit_linear_workspace)  -- /usr/include/gsl/gsl_multifit.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_free";

   function gsl_multifit_linear
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear";

   function gsl_multifit_linear_tsvd
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      rank : access size_t;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_tsvd";

   function gsl_multifit_linear_svd (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_svd";

   function gsl_multifit_linear_bsvd (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_bsvd";

   function gsl_multifit_linear_rank (tol : double; work : access constant gsl_multifit_linear_workspace) return size_t  -- /usr/include/gsl/gsl_multifit.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_rank";

   function gsl_multifit_linear_solve
     (lambda : double;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rnorm : access double;
      snorm : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_solve";

   function gsl_multifit_linear_applyW
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      WX : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Wy : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_applyW";

   function gsl_multifit_linear_stdform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_stdform1";

   function gsl_multifit_linear_wstdform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wstdform1";

   function gsl_multifit_linear_L_decomp (L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_L_decomp";

   function gsl_multifit_linear_stdform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      M : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_stdform2";

   function gsl_multifit_linear_wstdform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      M : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wstdform2";

   function gsl_multifit_linear_genform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_genform1";

   function gsl_multifit_linear_genform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      M : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_genform2";

   function gsl_multifit_linear_wgenform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      M : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wgenform2";

   function gsl_multifit_linear_lreg
     (smin : double;
      smax : double;
      reg_param : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lreg";

   function gsl_multifit_linear_lcurve
     (y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rho : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      eta : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcurve";

   function gsl_multifit_linear_lcorner
     (rho : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      eta : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      idx : access size_t) return int  -- /usr/include/gsl/gsl_multifit.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcorner";

   function gsl_multifit_linear_lcorner2
     (reg_param : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      eta : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      idx : access size_t) return int  -- /usr/include/gsl/gsl_multifit.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcorner2";

   function gsl_multifit_linear_Lk
     (p : size_t;
      k : size_t;
      L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_Lk";

   function gsl_multifit_linear_Lsobolev
     (p : size_t;
      kmax : size_t;
      alpha : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_Lsobolev";

   function gsl_multifit_wlinear
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear";

   function gsl_multifit_wlinear_tsvd
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      rank : access size_t;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_tsvd";

   function gsl_multifit_wlinear_svd
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      rank : access size_t;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_svd";

   function gsl_multifit_wlinear_usvd
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      rank : access size_t;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_usvd";

   function gsl_multifit_linear_est
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_multifit.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_est";

   function gsl_multifit_linear_rcond (w : access constant gsl_multifit_linear_workspace) return double  -- /usr/include/gsl/gsl_multifit.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_rcond";

   function gsl_multifit_linear_residuals
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      r : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_residuals";

  -- gcv.c  
   function gsl_multifit_linear_gcv_init
     (y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      UTy : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      delta0 : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_init";

   function gsl_multifit_linear_gcv_curve
     (reg_param : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      UTy : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      G : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_curve";

   function gsl_multifit_linear_gcv_min
     (reg_param : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      UTy : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      G : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      lambda : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_min";

   function gsl_multifit_linear_gcv_calc
     (lambda : double;
      UTy : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      work : access gsl_multifit_linear_workspace) return double  -- /usr/include/gsl/gsl_multifit.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_calc";

   function gsl_multifit_linear_gcv
     (y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      G : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      lambda : access double;
      G_lambda : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv";

  -- method name  
  -- default tuning constant  
   type gsl_multifit_robust_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit.h:299
      wfun : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit.h:300
      psi_deriv : access function (arg1 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit.h:301
      tuning_default : aliased double;  -- /usr/include/gsl/gsl_multifit.h:302
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:303

  -- OLS estimate of sigma  
  -- MAD estimate of sigma  
  -- robust estimate of sigma  
  -- final estimate of sigma  
  -- R^2 coefficient of determination  
  -- degree of freedom adjusted R^2  
  -- root mean squared error  
  -- residual sum of squares  
  -- degrees of freedom  
  -- number of iterations  
  -- final weights  
  -- final residuals y - X c  
   type gsl_multifit_robust_stats is record
      sigma_ols : aliased double;  -- /usr/include/gsl/gsl_multifit.h:307
      sigma_mad : aliased double;  -- /usr/include/gsl/gsl_multifit.h:308
      sigma_rob : aliased double;  -- /usr/include/gsl/gsl_multifit.h:309
      sigma : aliased double;  -- /usr/include/gsl/gsl_multifit.h:310
      Rsq : aliased double;  -- /usr/include/gsl/gsl_multifit.h:311
      adj_Rsq : aliased double;  -- /usr/include/gsl/gsl_multifit.h:312
      rmse : aliased double;  -- /usr/include/gsl/gsl_multifit.h:313
      sse : aliased double;  -- /usr/include/gsl/gsl_multifit.h:314
      dof : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:315
      numit : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:316
      weights : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:317
      r : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:318
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:319

  -- number of observations  
  -- number of parameters  
  -- number of iterations  
  -- maximum iterations  
  -- tuning parameter  
  -- residuals at current iteration  
  -- weights at current iteration  
  -- coefficients from previous iteration  
  -- multiplicative factors for residuals  
  -- psi(r)  
  -- psi'(r)  
  -- Q S^{-1} of original matrix X  
  -- balancing parameters of original matrix X  
  -- workspace of length n  
  -- various statistics  
   type gsl_multifit_robust_workspace is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:323
      p : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:324
      numit : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:325
      maxiter : aliased size_t;  -- /usr/include/gsl/gsl_multifit.h:326
      c_type : access constant gsl_multifit_robust_type;  -- /usr/include/gsl/gsl_multifit.h:327
      tune : aliased double;  -- /usr/include/gsl/gsl_multifit.h:328
      r : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:330
      weights : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:331
      c_prev : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:332
      resfac : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:333
      psi : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:335
      dpsi : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:336
      QSI : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:338
      D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:339
      workn : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:341
      stats : aliased gsl_multifit_robust_stats;  -- /usr/include/gsl/gsl_multifit.h:343
      multifit_p : access gsl_multifit_linear_workspace;  -- /usr/include/gsl/gsl_multifit.h:345
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:346

  -- available types  
   gsl_multifit_robust_default : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_default";

   gsl_multifit_robust_bisquare : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_bisquare";

   gsl_multifit_robust_cauchy : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_cauchy";

   gsl_multifit_robust_fair : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_fair";

   gsl_multifit_robust_huber : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_huber";

   gsl_multifit_robust_ols : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_ols";

   gsl_multifit_robust_welsch : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_welsch";

   function gsl_multifit_robust_alloc
     (arg1 : access constant gsl_multifit_robust_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_multifit_robust_workspace  -- /usr/include/gsl/gsl_multifit.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_alloc";

   procedure gsl_multifit_robust_free (w : access gsl_multifit_robust_workspace)  -- /usr/include/gsl/gsl_multifit.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_free";

   function gsl_multifit_robust_tune (tune : double; w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_tune";

   function gsl_multifit_robust_maxiter (maxiter : size_t; w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_maxiter";

   function gsl_multifit_robust_name (arg1 : access constant gsl_multifit_robust_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_name";

   function gsl_multifit_robust_statistics (w : access constant gsl_multifit_robust_workspace) return gsl_multifit_robust_stats  -- /usr/include/gsl/gsl_multifit.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_statistics";

   function gsl_multifit_robust_weights
     (r : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      wts : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_weights";

   function gsl_multifit_robust
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust";

   function gsl_multifit_robust_est
     (x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cov : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_multifit.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_est";

   function gsl_multifit_robust_residuals
     (X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      r : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_residuals";

end GSL.Low_Level.gsl_gsl_multifit_h;
