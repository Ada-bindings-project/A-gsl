pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_mode_h;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_airy_h is

  -- specfunc/gsl_sf_airy.h
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

  -- Author:  G. Jungman  
  -- Airy function Ai(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW
  --  

   function gsl_sf_airy_Ai_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_e";

   function gsl_sf_airy_Ai (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai";

  -- Airy function Bi(x)
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_airy_Bi_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_e";

   function gsl_sf_airy_Bi (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi";

  -- scaled Ai(x):
  -- *                     Ai(x)   x < 0
  -- *   exp(+2/3 x^{3/2}) Ai(x)   x > 0
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_airy_Ai_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_scaled_e";

   function gsl_sf_airy_Ai_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_scaled";

  -- scaled Bi(x):
  -- *                     Bi(x)   x < 0
  -- *   exp(-2/3 x^{3/2}) Bi(x)   x > 0
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_airy_Bi_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_scaled_e";

   function gsl_sf_airy_Bi_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_scaled";

  -- derivative Ai'(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW
  --  

   function gsl_sf_airy_Ai_deriv_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_e";

   function gsl_sf_airy_Ai_deriv (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv";

  -- derivative Bi'(x)
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_airy_Bi_deriv_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_e";

   function gsl_sf_airy_Bi_deriv (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv";

  -- scaled derivative Ai'(x):
  -- *                     Ai'(x)   x < 0
  -- *   exp(+2/3 x^{3/2}) Ai'(x)   x > 0
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_airy_Ai_deriv_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_scaled_e";

   function gsl_sf_airy_Ai_deriv_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_scaled";

  -- scaled derivative:
  -- *                     Bi'(x)   x < 0
  -- *   exp(-2/3 x^{3/2}) Bi'(x)   x > 0
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_airy_Bi_deriv_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_scaled_e";

   function gsl_sf_airy_Bi_deriv_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_scaled";

  -- Zeros of Ai(x)
  --  

   function gsl_sf_airy_zero_Ai_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_e";

   function gsl_sf_airy_zero_Ai (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai";

  -- Zeros of Bi(x)
  --  

   function gsl_sf_airy_zero_Bi_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_e";

   function gsl_sf_airy_zero_Bi (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi";

  -- Zeros of Ai'(x)
  --  

   function gsl_sf_airy_zero_Ai_deriv_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_deriv_e";

   function gsl_sf_airy_zero_Ai_deriv (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_deriv";

  -- Zeros of Bi'(x)
  --  

   function gsl_sf_airy_zero_Bi_deriv_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_deriv_e";

   function gsl_sf_airy_zero_Bi_deriv (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_deriv";

end GSL.Low_Level.gsl_gsl_sf_airy_h;
