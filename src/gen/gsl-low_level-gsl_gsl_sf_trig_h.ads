pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_trig_h is

  -- specfunc/gsl_sf_trig.h
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
  -- Sin(x) with GSL semantics. This is actually important
  -- * because we want to control the error estimate, and trying
  -- * to guess the error for the standard library implementation
  -- * every time it is used would be a little goofy.
  --  

   function gsl_sf_sin_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_e";

   function gsl_sf_sin (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin";

  -- Cos(x) with GSL semantics.
  --  

   function gsl_sf_cos_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_e";

   function gsl_sf_cos (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos";

  -- Hypot(x,y) with GSL semantics.
  --  

   function gsl_sf_hypot_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hypot_e";

   function gsl_sf_hypot (x : double; y : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hypot";

  -- Sin(z) for complex z
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_complex_sin_e
     (zr : double;
      zi : double;
      szr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      szi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_sin_e";

  -- Cos(z) for complex z
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_complex_cos_e
     (zr : double;
      zi : double;
      czr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      czi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_cos_e";

  -- Log(Sin(z)) for complex z
  -- *
  -- * exceptions: GSL_EDOM, GSL_ELOSS
  --  

   function gsl_sf_complex_logsin_e
     (zr : double;
      zi : double;
      lszr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      lszi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_logsin_e";

  -- Sinc(x) = sin(pi x) / (pi x)
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_sinc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sinc_e";

   function gsl_sf_sinc (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sinc";

  -- Log(Sinh(x)), x > 0
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_lnsinh_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnsinh_e";

   function gsl_sf_lnsinh (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnsinh";

  -- Log(Cosh(x))
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_lncosh_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lncosh_e";

   function gsl_sf_lncosh (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lncosh";

  -- Convert polar to rectlinear coordinates.
  -- *
  -- * exceptions: GSL_ELOSS
  --  

   function gsl_sf_polar_to_rect
     (r : double;
      theta : double;
      x : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      y : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_polar_to_rect";

  -- Convert rectilinear to polar coordinates.
  -- * return argument in range [-pi, pi]
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_rect_to_polar
     (x : double;
      y : double;
      r : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      theta : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_rect_to_polar";

  -- Sin(x) for quantity with an associated error.
  --  

   function gsl_sf_sin_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_err_e";

  -- Cos(x) for quantity with an associated error.
  --  

   function gsl_sf_cos_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_err_e";

  -- Force an angle to lie in the range (-pi,pi].
  -- *
  -- * exceptions: GSL_ELOSS
  --  

   function gsl_sf_angle_restrict_symm_e (theta : access double) return int  -- /usr/include/gsl/gsl_sf_trig.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm_e";

   function gsl_sf_angle_restrict_symm (theta : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm";

  -- Force an angle to lie in the range [0, 2pi)
  -- *
  -- * exceptions: GSL_ELOSS
  --  

   function gsl_sf_angle_restrict_pos_e (theta : access double) return int  -- /usr/include/gsl/gsl_sf_trig.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos_e";

   function gsl_sf_angle_restrict_pos (theta : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos";

   function gsl_sf_angle_restrict_symm_err_e (theta : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm_err_e";

   function gsl_sf_angle_restrict_pos_err_e (theta : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos_err_e";

end GSL.Low_Level.gsl_gsl_sf_trig_h;
