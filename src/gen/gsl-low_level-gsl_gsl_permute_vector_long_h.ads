pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_vector_long_h;

package GSL.Low_Level.gsl_gsl_permute_vector_long_h is

   function gsl_permute_vector_long (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_permute_vector_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_long";

   function gsl_permute_vector_long_inverse (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_permute_vector_long.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_long_inverse";

end GSL.Low_Level.gsl_gsl_permute_vector_long_h;
