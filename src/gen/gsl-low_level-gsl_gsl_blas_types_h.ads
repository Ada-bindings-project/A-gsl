pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_cblas_h;

package GSL.Low_Level.gsl_gsl_blas_types_h is

   subtype CBLAS_INDEX_t is size_t;  -- /usr/include/gsl/gsl_blas_types.h:42

   subtype CBLAS_ORDER_t is GSL.Low_Level.gsl_gsl_cblas_h.CBLAS_ORDER;  -- /usr/include/gsl/gsl_blas_types.h:43

   subtype CBLAS_TRANSPOSE_t is GSL.Low_Level.gsl_gsl_cblas_h.CBLAS_TRANSPOSE;  -- /usr/include/gsl/gsl_blas_types.h:44

   subtype CBLAS_UPLO_t is GSL.Low_Level.gsl_gsl_cblas_h.CBLAS_UPLO;  -- /usr/include/gsl/gsl_blas_types.h:45

   subtype CBLAS_DIAG_t is GSL.Low_Level.gsl_gsl_cblas_h.CBLAS_DIAG;  -- /usr/include/gsl/gsl_blas_types.h:46

   subtype CBLAS_SIDE_t is GSL.Low_Level.gsl_gsl_cblas_h.CBLAS_SIDE;  -- /usr/include/gsl/gsl_blas_types.h:47

end GSL.Low_Level.gsl_gsl_blas_types_h;
