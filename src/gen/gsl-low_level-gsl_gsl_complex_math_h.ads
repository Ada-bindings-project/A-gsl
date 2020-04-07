pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_complex_h;

package GSL.Low_Level.gsl_gsl_complex_math_h is

   --  unsupported macro: GSL_COMPLEX_ONE (gsl_complex_rect(1.0,0.0))
   --  unsupported macro: GSL_COMPLEX_ZERO (gsl_complex_rect(0.0,0.0))
   --  unsupported macro: GSL_COMPLEX_NEGONE (gsl_complex_rect(-1.0,0.0))
  -- complex/gsl_complex_math.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2004, 2007 Jorma Olavi Tähtinen, Brian Gough
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

  -- Complex numbers  
  -- r= r e^(i theta)  
   function gsl_complex_polar (r : double; theta : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_polar";

  -- r= real+i*imag  
   function gsl_complex_rect (x : double; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_rect";

  -- return z = x + i y  
  -- Properties of complex numbers  
  -- return arg(z), -pi< arg(z) <=+pi  
   function gsl_complex_arg (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arg";

  -- return |z|    
   function gsl_complex_abs (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_abs";

  -- return |z|^2  
   function gsl_complex_abs2 (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_abs2";

  -- return log|z|  
   function gsl_complex_logabs (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return double  -- /usr/include/gsl/gsl_complex_math.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_logabs";

  -- Complex arithmetic operators  
  -- r=a+b  
   function gsl_complex_add (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add";

  -- r=a-b  
   function gsl_complex_sub (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub";

  -- r=a*b  
   function gsl_complex_mul (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul";

  -- r=a/b  
   function gsl_complex_div (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div";

  -- r=a+x  
   function gsl_complex_add_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add_real";

  -- r=a-x  
   function gsl_complex_sub_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub_real";

  -- r=a*x  
   function gsl_complex_mul_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul_real";

  -- r=a/x  
   function gsl_complex_div_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div_real";

  -- r=a+iy  
   function gsl_complex_add_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_add_imag";

  -- r=a-iy  
   function gsl_complex_sub_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sub_imag";

  -- r=a*iy  
   function gsl_complex_mul_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_mul_imag";

  -- r=a/iy  
   function gsl_complex_div_imag (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; y : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_div_imag";

  -- r=conj(z)  
   function gsl_complex_conjugate (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_conjugate";

  -- r=1/a  
   function gsl_complex_inverse (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_inverse";

  -- r=-a  
   function gsl_complex_negative (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_negative";

  -- Elementary Complex Functions  
  -- r=sqrt(z)  
   function gsl_complex_sqrt (z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sqrt";

  -- r=sqrt(x) (x<0 ok)  
   function gsl_complex_sqrt_real (x : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sqrt_real";

  -- r=a^b  
   function gsl_complex_pow (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_pow";

  -- r=a^b  
   function gsl_complex_pow_real (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_pow_real";

  -- r=exp(a)  
   function gsl_complex_exp (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_exp";

  -- r=log(a) (base e)  
   function gsl_complex_log (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log";

  -- r=log10(a) (base 10)  
   function gsl_complex_log10 (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log10";

  -- r=log_b(a) (base=b)  
   function gsl_complex_log_b (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex; b : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_log_b";

  -- Complex Trigonometric Functions  
  -- r=sin(a)  
   function gsl_complex_sin (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sin";

  -- r=cos(a)  
   function gsl_complex_cos (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cos";

  -- r=sec(a)  
   function gsl_complex_sec (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sec";

  -- r=csc(a)  
   function gsl_complex_csc (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_csc";

  -- r=tan(a)  
   function gsl_complex_tan (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_tan";

  -- r=cot(a)  
   function gsl_complex_cot (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cot";

  -- Inverse Complex Trigonometric Functions  
  -- r=arcsin(a)  
   function gsl_complex_arcsin (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsin";

  -- r=arcsin(a)  
   function gsl_complex_arcsin_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsin_real";

  -- r=arccos(a)  
   function gsl_complex_arccos (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccos";

  -- r=arccos(a)  
   function gsl_complex_arccos_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccos_real";

  -- r=arcsec(a)  
   function gsl_complex_arcsec (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsec";

  -- r=arcsec(a)  
   function gsl_complex_arcsec_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsec_real";

  -- r=arccsc(a)  
   function gsl_complex_arccsc (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsc";

  -- r=arccsc(a)  
   function gsl_complex_arccsc_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsc_real";

  -- r=arctan(a)  
   function gsl_complex_arctan (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctan";

  -- r=arccot(a)  
   function gsl_complex_arccot (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccot";

  -- Complex Hyperbolic Functions  
  -- r=sinh(a)  
   function gsl_complex_sinh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sinh";

  -- r=coshh(a)  
   function gsl_complex_cosh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_cosh";

  -- r=sech(a)  
   function gsl_complex_sech (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_sech";

  -- r=csch(a)  
   function gsl_complex_csch (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_csch";

  -- r=tanh(a)  
   function gsl_complex_tanh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_tanh";

  -- r=coth(a)  
   function gsl_complex_coth (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_coth";

  -- Inverse Complex Hyperbolic Functions  
  -- r=arcsinh(a)  
   function gsl_complex_arcsinh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsinh";

  -- r=arccosh(a)  
   function gsl_complex_arccosh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccosh";

  -- r=arccosh(a)  
   function gsl_complex_arccosh_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccosh_real";

  -- r=arcsech(a)  
   function gsl_complex_arcsech (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arcsech";

  -- r=arccsch(a)  
   function gsl_complex_arccsch (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccsch";

  -- r=arctanh(a)  
   function gsl_complex_arctanh (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctanh";

  -- r=arctanh(a)  
   function gsl_complex_arctanh_real (a : double) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arctanh_real";

  -- r=arccoth(a)  
   function gsl_complex_arccoth (a : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_complex_math.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_arccoth";

end GSL.Low_Level.gsl_gsl_complex_math_h;
