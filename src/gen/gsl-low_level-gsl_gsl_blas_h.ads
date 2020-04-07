pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_vector_float_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;
limited with GSL.Low_Level.gsl_gsl_vector_complex_float_h;
with GSL.Low_Level.gsl_gsl_complex_h;
limited with GSL.Low_Level.gsl_gsl_vector_complex_double_h;
with GSL.Low_Level.gsl_gsl_blas_types_h;
limited with GSL.Low_Level.gsl_gsl_matrix_float_h;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
limited with GSL.Low_Level.gsl_gsl_matrix_complex_float_h;
limited with GSL.Low_Level.gsl_gsl_matrix_complex_double_h;

package GSL.Low_Level.gsl_gsl_blas_h is

  -- blas/gsl_blas.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Gerard Jungman
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

  -- * Author:  G. Jungman
  --  

  -- ========================================================================
  -- * Level 1
  -- * ========================================================================
  --  

   function gsl_blas_sdsdot
     (alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      result : access float) return int  -- /usr/include/gsl/gsl_blas.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sdsdot";

   function gsl_blas_dsdot
     (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      result : access double) return int  -- /usr/include/gsl/gsl_blas.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsdot";

   function gsl_blas_sdot
     (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      result : access float) return int  -- /usr/include/gsl/gsl_blas.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sdot";

   function gsl_blas_ddot
     (X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      result : access double) return int  -- /usr/include/gsl/gsl_blas.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ddot";

   function gsl_blas_cdotu
     (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      dotu : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cdotu";

   function gsl_blas_cdotc
     (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      dotc : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cdotc";

   function gsl_blas_zdotu
     (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      dotu : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_blas.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdotu";

   function gsl_blas_zdotc
     (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      dotc : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_blas.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdotc";

   function gsl_blas_snrm2 (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return float  -- /usr/include/gsl/gsl_blas.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_snrm2";

   function gsl_blas_sasum (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return float  -- /usr/include/gsl/gsl_blas.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sasum";

   function gsl_blas_dnrm2 (X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_blas.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dnrm2";

   function gsl_blas_dasum (X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_blas.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dasum";

   function gsl_blas_scnrm2 (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return float  -- /usr/include/gsl/gsl_blas.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scnrm2";

   function gsl_blas_scasum (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return float  -- /usr/include/gsl/gsl_blas.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scasum";

   function gsl_blas_dznrm2 (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return double  -- /usr/include/gsl/gsl_blas.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dznrm2";

   function gsl_blas_dzasum (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return double  -- /usr/include/gsl/gsl_blas.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dzasum";

   function gsl_blas_isamax (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_isamax";

   function gsl_blas_idamax (X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_idamax";

   function gsl_blas_icamax (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_icamax";

   function gsl_blas_izamax (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_izamax";

   function gsl_blas_sswap (X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float; Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sswap";

   function gsl_blas_scopy (X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float; Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scopy";

   function gsl_blas_saxpy
     (alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_saxpy";

   function gsl_blas_dswap (X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dswap";

   function gsl_blas_dcopy (X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector; Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dcopy";

   function gsl_blas_daxpy
     (alpha : double;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_daxpy";

   function gsl_blas_cswap (X : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float; Y : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cswap";

   function gsl_blas_ccopy (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float; Y : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ccopy";

   function gsl_blas_caxpy
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_caxpy";

   function gsl_blas_zswap (X : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex; Y : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zswap";

   function gsl_blas_zcopy (X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex; Y : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zcopy";

   function gsl_blas_zaxpy
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zaxpy";

   function gsl_blas_srotg
     (a : access float;
      b : access float;
      c : access float;
      s : access float) return int  -- /usr/include/gsl/gsl_blas.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotg";

   function gsl_blas_srotmg
     (d1 : access float;
      d2 : access float;
      b1 : access float;
      b2 : float;
      P : access float) return int  -- /usr/include/gsl/gsl_blas.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotmg";

   function gsl_blas_srot
     (X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      c : float;
      s : float) return int  -- /usr/include/gsl/gsl_blas.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srot";

   function gsl_blas_srotm
     (X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      P : access float) return int  -- /usr/include/gsl/gsl_blas.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotm";

   function gsl_blas_drotg
     (a : access double;
      b : access double;
      c : access double;
      s : access double) return int  -- /usr/include/gsl/gsl_blas.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotg";

   function gsl_blas_drotmg
     (d1 : access double;
      d2 : access double;
      b1 : access double;
      b2 : double;
      P : access double) return int  -- /usr/include/gsl/gsl_blas.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotmg";

   function gsl_blas_drot
     (X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : double;
      s : double) return int  -- /usr/include/gsl/gsl_blas.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drot";

   function gsl_blas_drotm
     (X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      P : access double) return int  -- /usr/include/gsl/gsl_blas.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotm";

   procedure gsl_blas_sscal (alpha : float; X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float)  -- /usr/include/gsl/gsl_blas.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sscal";

   procedure gsl_blas_dscal (alpha : double; X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector)  -- /usr/include/gsl/gsl_blas.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dscal";

   procedure gsl_blas_cscal (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float; X : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float)  -- /usr/include/gsl/gsl_blas.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cscal";

   procedure gsl_blas_zscal (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; X : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex)  -- /usr/include/gsl/gsl_blas.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zscal";

   procedure gsl_blas_csscal (alpha : float; X : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float)  -- /usr/include/gsl/gsl_blas.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csscal";

   procedure gsl_blas_zdscal (alpha : double; X : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex)  -- /usr/include/gsl/gsl_blas.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdscal";

  -- ===========================================================================
  -- * Level 2
  -- * ===========================================================================
  --  

  -- * Routines with standard 4 prefixes (S, D, C, Z)
  --  

   function gsl_blas_sgemv
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      beta : float;
      Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sgemv";

   function gsl_blas_strmv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strmv";

   function gsl_blas_strsv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strsv";

   function gsl_blas_dgemv
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dgemv";

   function gsl_blas_dtrmv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrmv";

   function gsl_blas_dtrsv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrsv";

   function gsl_blas_cgemv
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgemv";

   function gsl_blas_ctrmv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrmv";

   function gsl_blas_ctrsv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrsv";

   function gsl_blas_zgemv
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgemv";

   function gsl_blas_ztrmv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrmv";

   function gsl_blas_ztrsv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrsv";

  -- * Routines with S and D prefixes only
  --  

   function gsl_blas_ssymv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      beta : float;
      Y : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssymv";

   function gsl_blas_sger
     (alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sger";

   function gsl_blas_ssyr
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr";

   function gsl_blas_ssyr2
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr2";

   function gsl_blas_dsymv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      Y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsymv";

   function gsl_blas_dger
     (alpha : double;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dger";

   function gsl_blas_dsyr
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr";

   function gsl_blas_dsyr2
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr2";

  -- * Routines with C and Z prefixes only
  --  

   function gsl_blas_chemv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_chemv";

   function gsl_blas_cgeru
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgeru";

   function gsl_blas_cgerc
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgerc";

   function gsl_blas_cher
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher";

   function gsl_blas_cher2
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher2";

   function gsl_blas_zhemv
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      Y : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zhemv";

   function gsl_blas_zgeru
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgeru";

   function gsl_blas_zgerc
     (alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgerc";

   function gsl_blas_zher
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher";

   function gsl_blas_zher2
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      X : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher2";

  -- * ===========================================================================
  -- * Prototypes for level 3 BLAS
  -- * ===========================================================================
  --  

  -- * Routines with standard 4 prefixes (S, D, C, Z)
  --  

   function gsl_blas_sgemm
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sgemm";

   function gsl_blas_ssymm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssymm";

   function gsl_blas_ssyrk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyrk";

   function gsl_blas_ssyr2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr2k";

   function gsl_blas_strmm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strmm";

   function gsl_blas_strsm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access GSL.Low_Level.gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strsm";

   function gsl_blas_dgemm
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dgemm";

   function gsl_blas_dsymm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsymm";

   function gsl_blas_dsyrk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyrk";

   function gsl_blas_dsyr2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr2k";

   function gsl_blas_dtrmm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrmm";

   function gsl_blas_dtrsm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      B : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrsm";

   function gsl_blas_cgemm
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgemm";

   function gsl_blas_csymm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csymm";

   function gsl_blas_csyrk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csyrk";

   function gsl_blas_csyr2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csyr2k";

   function gsl_blas_ctrmm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrmm";

   function gsl_blas_ctrsm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrsm";

   function gsl_blas_zgemm
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgemm";

   function gsl_blas_zsymm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsymm";

   function gsl_blas_zsyrk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsyrk";

   function gsl_blas_zsyr2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsyr2k";

   function gsl_blas_ztrmm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrmm";

   function gsl_blas_ztrsm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrsm";

  -- * Routines with prefixes C and Z only
  --  

   function gsl_blas_chemm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_chemm";

   function gsl_blas_cherk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cherk";

   function gsl_blas_cher2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : float;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher2k";

   function gsl_blas_zhemm
     (Side : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zhemm";

   function gsl_blas_zherk
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zherk";

   function gsl_blas_zher2k
     (Uplo : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
      A : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : double;
      C : access GSL.Low_Level.gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher2k";

end GSL.Low_Level.gsl_gsl_blas_h;
