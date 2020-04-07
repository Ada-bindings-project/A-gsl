pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_blas_types_h;
limited with GSL.Low_Level.gsl_gsl_spmatrix_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;


package GSL.Low_Level.gsl_gsl_spblas_h is

  -- gsl_spblas.h
  -- * 
  -- * Copyright (C) 2012-2014 Patrick Alken
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

  -- * Prototypes
  --  

   function gsl_spblas_dgemv
     (TransA : GSL.Low_Level.gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_spblas.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_dgemv";

   function gsl_spblas_dgemm
     (alpha : double;
      A : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      B : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      C : access GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spblas.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_dgemm";

   function gsl_spblas_scatter
     (A : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      j : size_t;
      alpha : double;
      w : access size_t;
      x : access double;
      mark : size_t;
      C : access GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      nz : size_t) return size_t  -- /usr/include/gsl/gsl_spblas.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_scatter";

end GSL.Low_Level.gsl_gsl_spblas_h;
