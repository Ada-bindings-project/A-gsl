pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_minmax_h is

   --  arg-macro: function GSL_MAX (a, b)
   --    return (a) > (b) ? (a) : (b);
   --  arg-macro: function GSL_MIN (a, b)
   --    return (a) < (b) ? (a) : (b);
   --  arg-macro: procedure GSL_MAX_INT (a, b)
   --    GSL_MAX(a,b)
   --  arg-macro: procedure GSL_MIN_INT (a, b)
   --    GSL_MIN(a,b)
   --  arg-macro: procedure GSL_MAX_DBL (a, b)
   --    GSL_MAX(a,b)
   --  arg-macro: procedure GSL_MIN_DBL (a, b)
   --    GSL_MIN(a,b)
   --  arg-macro: procedure GSL_MAX_LDBL (a, b)
   --    GSL_MAX(a,b)
   --  arg-macro: procedure GSL_MIN_LDBL (a, b)
   --    GSL_MIN(a,b)
   function gsl_max (a : double; b : double) return double  -- /usr/include/gsl/gsl_minmax.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_max";

   function gsl_min (a : double; b : double) return double  -- /usr/include/gsl/gsl_minmax.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min";

end GSL.Low_Level.gsl_gsl_minmax_h;
