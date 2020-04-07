pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_matrix_int_h;

package GSL.Low_Level.gsl_gsl_permute_matrix_int_h is

   function gsl_permute_matrix_int (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; A : access GSL.Low_Level.gsl_gsl_matrix_int_h.gsl_matrix_int) return int  -- /usr/include/gsl/gsl_permute_matrix_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_matrix_int";

end GSL.Low_Level.gsl_gsl_permute_matrix_int_h;
