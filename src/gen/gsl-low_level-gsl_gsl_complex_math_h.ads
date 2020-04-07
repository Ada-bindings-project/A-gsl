pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_complex_h;

package GSL.Low_Level.gsl_gsl_complex_math_h is

   --  unsupported macro: GSL_COMPLEX_ONE (gsl_complex_rect(1.0,0.0))
   --  unsupported macro: GSL_COMPLEX_ZERO (gsl_complex_rect(0.0,0.0))
   --  unsupported macro: GSL_COMPLEX_NEGONE (gsl_complex_rect(-1.0,0.0))
   function gsl_complex_polar (r : double; theta : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_polar";

   function gsl_complex_rect (x : double; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_rect";

   function gsl_complex_arg (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arg";

   function gsl_complex_abs (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_abs";

   function gsl_complex_abs2 (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_abs2";

   function gsl_complex_logabs (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_logabs";

   function gsl_complex_add (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add";

   function gsl_complex_sub (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub";

   function gsl_complex_mul (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul";

   function gsl_complex_div (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div";

   function gsl_complex_add_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add_real";

   function gsl_complex_sub_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub_real";

   function gsl_complex_mul_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul_real";

   function gsl_complex_div_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div_real";

   function gsl_complex_add_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add_imag";

   function gsl_complex_sub_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub_imag";

   function gsl_complex_mul_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul_imag";

   function gsl_complex_div_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div_imag";

   function gsl_complex_conjugate (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_conjugate";

   function gsl_complex_inverse (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_inverse";

   function gsl_complex_negative (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_negative";

   function gsl_complex_sqrt (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sqrt";

   function gsl_complex_sqrt_real (x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sqrt_real";

   function gsl_complex_pow (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_pow";

   function gsl_complex_pow_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_pow_real";

   function gsl_complex_exp (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_exp";

   function gsl_complex_log (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log";

   function gsl_complex_log10 (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log10";

   function gsl_complex_log_b (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log_b";

   function gsl_complex_sin (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sin";

   function gsl_complex_cos (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cos";

   function gsl_complex_sec (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sec";

   function gsl_complex_csc (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_csc";

   function gsl_complex_tan (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_tan";

   function gsl_complex_cot (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cot";

   function gsl_complex_arcsin (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsin";

   function gsl_complex_arcsin_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsin_real";

   function gsl_complex_arccos (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccos";

   function gsl_complex_arccos_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccos_real";

   function gsl_complex_arcsec (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsec";

   function gsl_complex_arcsec_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsec_real";

   function gsl_complex_arccsc (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsc";

   function gsl_complex_arccsc_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsc_real";

   function gsl_complex_arctan (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctan";

   function gsl_complex_arccot (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccot";

   function gsl_complex_sinh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sinh";

   function gsl_complex_cosh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cosh";

   function gsl_complex_sech (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sech";

   function gsl_complex_csch (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_csch";

   function gsl_complex_tanh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_tanh";

   function gsl_complex_coth (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_coth";

   function gsl_complex_arcsinh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsinh";

   function gsl_complex_arccosh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccosh";

   function gsl_complex_arccosh_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccosh_real";

   function gsl_complex_arcsech (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsech";

   function gsl_complex_arccsch (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsch";

   function gsl_complex_arctanh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctanh";

   function gsl_complex_arctanh_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctanh_real";

   function gsl_complex_arccoth (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccoth";

end GSL.Low_Level.gsl_gsl_complex_math_h;
