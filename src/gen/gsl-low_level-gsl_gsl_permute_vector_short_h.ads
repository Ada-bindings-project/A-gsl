pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_vector_short_h;

package GSL.Low_Level.gsl_gsl_permute_vector_short_h is

   function gsl_permute_vector_short (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_permute_vector_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_short";

   function gsl_permute_vector_short_inverse (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_permute_vector_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_short_inverse";

end GSL.Low_Level.gsl_gsl_permute_vector_short_h;
