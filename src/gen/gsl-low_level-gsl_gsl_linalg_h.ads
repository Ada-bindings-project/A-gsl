pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
with GSL.Low_Level.gsl_gsl_mode_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
limited with GSL.Low_Level.gsl_gsl_vector_complex_double_h;
with GSL.Low_Level.gsl_gsl_complex_h;
limited with GSL.Low_Level.gsl_gsl_matrix_complex_double_h;

with GSL.Low_Level.gsl_gsl_permutation_h;
with GSL.Low_Level.gsl_gsl_blas_types_h;
with System;

package GSL.Low_Level.gsl_gsl_linalg_h is

   type gsl_linalg_matrix_mod_t is 
     (GSL_LINALG_MOD_NONE,
      GSL_LINALG_MOD_TRANSPOSE,
      GSL_LINALG_MOD_CONJUGATE)
   with Convention => C;  -- /usr/include/gsl/gsl_linalg.h:50

   function gsl_linalg_matmult
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_matmult";

   function gsl_linalg_matmult_mod
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      modA : gsl_linalg_matrix_mod_t;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      modB : gsl_linalg_matrix_mod_t;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_matmult_mod";

   function gsl_linalg_exponential_ss
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      eA : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return int  -- /usr/include/gsl/gsl_linalg.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_exponential_ss";

   function gsl_linalg_householder_transform (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_linalg.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_transform";

   function gsl_linalg_complex_householder_transform (v : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_transform";

   function gsl_linalg_householder_hm
     (tau : double;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hm";

   function gsl_linalg_householder_mh
     (tau : double;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_mh";

   function gsl_linalg_householder_hv
     (tau : double;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hv";

   function gsl_linalg_householder_hm1 (tau : double; A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hm1";

   function gsl_linalg_complex_householder_hm
     (tau : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_hm";

   function gsl_linalg_complex_householder_mh
     (tau : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_mh";

   function gsl_linalg_complex_householder_hv
     (tau : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      w : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_hv";

   function gsl_linalg_hessenberg_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_decomp";

   function gsl_linalg_hessenberg_unpack
     (H : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      U : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_unpack";

   function gsl_linalg_hessenberg_unpack_accum
     (H : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      U : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_unpack_accum";

   function gsl_linalg_hessenberg_set_zero (H : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_set_zero";

   function gsl_linalg_hessenberg_submatrix
     (M : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      top : size_t;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_submatrix";

   function gsl_linalg_hesstri_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      U : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      V : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hesstri_decomp";

   function gsl_linalg_SV_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      V : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp";

   function gsl_linalg_SV_decomp_mod
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      V : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp_mod";

   function gsl_linalg_SV_decomp_jacobi
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp_jacobi";

   function gsl_linalg_SV_solve
     (U : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Q : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_solve";

   function gsl_linalg_SV_leverage (U : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; h : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_leverage";

   function gsl_linalg_LU_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int) return int  -- /usr/include/gsl/gsl_linalg.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_decomp";

   function gsl_linalg_LU_solve
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_solve";

   function gsl_linalg_LU_svx
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_svx";

   function gsl_linalg_LU_refine
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      LU : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_refine";

   function gsl_linalg_LU_invert
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      inverse : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_invert";

   function gsl_linalg_LU_det (LU : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; signum : int) return double  -- /usr/include/gsl/gsl_linalg.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_det";

   function gsl_linalg_LU_lndet (LU : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return double  -- /usr/include/gsl/gsl_linalg.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_lndet";

   function gsl_linalg_LU_sgndet (lu : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; signum : int) return int  -- /usr/include/gsl/gsl_linalg.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_sgndet";

   function gsl_linalg_complex_LU_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int) return int  -- /usr/include/gsl/gsl_linalg.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_decomp";

   function gsl_linalg_complex_LU_solve
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_solve";

   function gsl_linalg_complex_LU_svx
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_svx";

   function gsl_linalg_complex_LU_refine
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      LU : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      work : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_refine";

   function gsl_linalg_complex_LU_invert
     (LU : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      inverse : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_invert";

   function gsl_linalg_complex_LU_det (LU : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; signum : int) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_det";

   function gsl_linalg_complex_LU_lndet (LU : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return double  -- /usr/include/gsl/gsl_linalg.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_lndet";

   function gsl_linalg_complex_LU_sgndet (LU : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; signum : int) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_sgndet";

   function gsl_linalg_QR_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_decomp";

   function gsl_linalg_QR_solve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_solve";

   function gsl_linalg_QR_svx
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_svx";

   function gsl_linalg_QR_lssolve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_lssolve";

   function gsl_linalg_QR_QRsolve
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QRsolve";

   function gsl_linalg_QR_Rsolve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Rsolve";

   function gsl_linalg_QR_Rsvx (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Rsvx";

   function gsl_linalg_QR_update
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_update";

   function gsl_linalg_QR_QTvec
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTvec";

   function gsl_linalg_QR_Qvec
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Qvec";

   function gsl_linalg_QR_QTmat
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTmat";

   function gsl_linalg_QR_matQ
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_matQ";

   function gsl_linalg_QR_unpack
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_unpack";

   function gsl_linalg_R_solve
     (R : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_R_solve";

   function gsl_linalg_R_svx (R : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_R_svx";

   function gsl_linalg_QRPT_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_decomp";

   function gsl_linalg_QRPT_decomp2
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      r : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_decomp2";

   function gsl_linalg_QRPT_solve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_solve";

   function gsl_linalg_QRPT_lssolve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_lssolve";

   function gsl_linalg_QRPT_lssolve2
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rank : size_t;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_lssolve2";

   function gsl_linalg_QRPT_svx
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_svx";

   function gsl_linalg_QRPT_QRsolve
     (Q : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_QRsolve";

   function gsl_linalg_QRPT_Rsolve
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_Rsolve";

   function gsl_linalg_QRPT_Rsvx
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_Rsvx";

   function gsl_linalg_QRPT_update
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      u : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_update";

   function gsl_linalg_QRPT_rank (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tol : double) return size_t  -- /usr/include/gsl/gsl_linalg.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_rank";

   function gsl_linalg_QRPT_rcond
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_rcond";

   function gsl_linalg_COD_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      rank : access size_t;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_decomp";

   function gsl_linalg_COD_decomp_e
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      tol : double;
      rank : access size_t;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_decomp_e";

   function gsl_linalg_COD_lssolve
     (QRZT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      perm : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      rank : size_t;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_lssolve";

   function gsl_linalg_COD_lssolve2
     (lambda : double;
      QRZT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      perm : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      rank : size_t;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      S : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:382
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_lssolve2";

   function gsl_linalg_COD_unpack
     (QRZT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rank : size_t;
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Z : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_unpack";

   function gsl_linalg_COD_matZ
     (QRZT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Z : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rank : size_t;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:390
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_matZ";

   function gsl_linalg_LQ_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_decomp";

   function gsl_linalg_LQ_solve_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_solve_T";

   function gsl_linalg_LQ_svx_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_svx_T";

   function gsl_linalg_LQ_lssolve_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      residual : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_lssolve_T";

   function gsl_linalg_LQ_Lsolve_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_Lsolve_T";

   function gsl_linalg_LQ_Lsvx_T (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_Lsvx_T";

   function gsl_linalg_L_solve_T
     (L : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_L_solve_T";

   function gsl_linalg_LQ_vecQ
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_vecQ";

   function gsl_linalg_LQ_vecQT
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_vecQT";

   function gsl_linalg_LQ_unpack
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_unpack";

   function gsl_linalg_LQ_update
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      R : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_update";

   function gsl_linalg_LQ_LQsolve
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_LQsolve";

   function gsl_linalg_PTLQ_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_decomp";

   function gsl_linalg_PTLQ_decomp2
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      r : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_decomp2";

   function gsl_linalg_PTLQ_solve_T
     (QR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:440
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_solve_T";

   function gsl_linalg_PTLQ_svx_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_svx_T";

   function gsl_linalg_PTLQ_LQsolve_T
     (Q : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      L : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_LQsolve_T";

   function gsl_linalg_PTLQ_Lsolve_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_Lsolve_T";

   function gsl_linalg_PTLQ_Lsvx_T
     (LQ : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_Lsvx_T";

   function gsl_linalg_PTLQ_update
     (Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_update";

   function gsl_linalg_cholesky_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp";

   function gsl_linalg_cholesky_decomp1 (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp1";

   function gsl_linalg_cholesky_solve
     (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve";

   function gsl_linalg_cholesky_solve_mat
     (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve_mat";

   function gsl_linalg_cholesky_svx (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx";

   function gsl_linalg_cholesky_svx_mat (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; X : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx_mat";

   function gsl_linalg_cholesky_invert (cholesky : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_invert";

   function gsl_linalg_cholesky_decomp_unit (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:494
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp_unit";

   function gsl_linalg_cholesky_scale (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_scale";

   function gsl_linalg_cholesky_scale_apply (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_scale_apply";

   function gsl_linalg_cholesky_decomp2 (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:500
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp2";

   function gsl_linalg_cholesky_svx2
     (LLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx2";

   function gsl_linalg_cholesky_solve2
     (LLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:506
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve2";

   function gsl_linalg_cholesky_rcond
     (LLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_rcond";

   function gsl_linalg_complex_cholesky_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:516
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_decomp";

   function gsl_linalg_complex_cholesky_solve
     (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      b : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_solve";

   function gsl_linalg_complex_cholesky_svx (cholesky : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; x : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_svx";

   function gsl_linalg_complex_cholesky_invert (cholesky : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_invert";

   function gsl_linalg_pcholesky_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation) return int  -- /usr/include/gsl/gsl_linalg.h:529
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_decomp";

   function gsl_linalg_pcholesky_solve
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:531
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_solve";

   function gsl_linalg_pcholesky_svx
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_svx";

   function gsl_linalg_pcholesky_decomp2
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      S : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_decomp2";

   function gsl_linalg_pcholesky_solve2
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_solve2";

   function gsl_linalg_pcholesky_svx2
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      S : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_svx2";

   function gsl_linalg_pcholesky_invert
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      Ainv : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:554
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_invert";

   function gsl_linalg_pcholesky_rcond
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:557
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_rcond";

   function gsl_linalg_mcholesky_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      E : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:562
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_decomp";

   function gsl_linalg_mcholesky_solve
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_solve";

   function gsl_linalg_mcholesky_svx
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_svx";

   function gsl_linalg_mcholesky_rcond
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_rcond";

   function gsl_linalg_mcholesky_invert
     (LDLT : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation;
      Ainv : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:577
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_invert";

   function gsl_linalg_symmtd_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_decomp";

   function gsl_linalg_symmtd_unpack
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Q : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:585
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_unpack";

   function gsl_linalg_symmtd_unpack_T
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_unpack_T";

   function gsl_linalg_hermtd_decomp (A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; tau : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:597
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_decomp";

   function gsl_linalg_hermtd_unpack
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      U : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      sudiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:600
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_unpack";

   function gsl_linalg_hermtd_unpack_T
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:606
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_unpack_T";

   function gsl_linalg_HH_solve
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_HH_solve";

   function gsl_linalg_HH_svx (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:616
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_HH_svx";

   function gsl_linalg_solve_symm_tridiag
     (diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      offdiag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:628
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_symm_tridiag";

   function gsl_linalg_solve_tridiag
     (diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      abovediag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      belowdiag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:643
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_tridiag";

   function gsl_linalg_solve_symm_cyc_tridiag
     (diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      offdiag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:661
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_symm_cyc_tridiag";

   function gsl_linalg_solve_cyc_tridiag
     (diag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      abovediag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      belowdiag : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_cyc_tridiag";

   function gsl_linalg_bidiag_decomp
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_V : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:686
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_decomp";

   function gsl_linalg_bidiag_unpack
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      U : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_V : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      V : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      superdiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:690
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack";

   function gsl_linalg_bidiag_unpack2
     (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tau_V : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      V : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack2";

   function gsl_linalg_bidiag_unpack_B
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      superdiag : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack_B";

   function gsl_linalg_balance_matrix (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:709
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_matrix";

   function gsl_linalg_balance_accum (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_accum";

   function gsl_linalg_balance_columns (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; D : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:711
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_columns";

   function gsl_linalg_tri_upper_rcond
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:715
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_rcond";

   function gsl_linalg_tri_lower_rcond
     (A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:716
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_rcond";

   function gsl_linalg_invnorm1
     (N : size_t;
      Ainvx : access function
        (arg1 : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
         arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
         arg3 : System.Address) return int;
      params : System.Address;
      Ainvnorm : access double;
      work : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:717
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_invnorm1";

   function gsl_linalg_tri_upper_invert (T : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_invert";

   function gsl_linalg_tri_lower_invert (T : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:724
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_invert";

   function gsl_linalg_tri_upper_unit_invert (T : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:725
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_unit_invert";

   function gsl_linalg_tri_lower_unit_invert (T : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_unit_invert";

   procedure gsl_linalg_givens
     (a : double;
      b : double;
      c : access double;
      s : access double)  -- /usr/include/gsl/gsl_linalg.h:728
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_givens";

   procedure gsl_linalg_givens_gv
     (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      i : size_t;
      j : size_t;
      c : double;
      s : double)  -- /usr/include/gsl/gsl_linalg.h:730
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_givens_gv";

end GSL.Low_Level.gsl_gsl_linalg_h;
