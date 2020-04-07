pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_debye_h is

  -- specfunc/gsl_sf_debye.h
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
  -- augmented by D_5(x) and D_6(x) by Richard J. Mathar, 2005-11-08  
  -- D_n(x) := n/x^n Integrate[t^n/(e^t - 1), {t,0,x}]  
  -- D_1(x)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_debye_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_1_e";

   function gsl_sf_debye_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_1";

  -- D_2(x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_debye_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_2_e";

   function gsl_sf_debye_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_2";

  -- D_3(x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_debye_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_3_e";

   function gsl_sf_debye_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_3";

  -- D_4(x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_debye_4_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_4_e";

   function gsl_sf_debye_4 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_4";

  -- D_5(x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_debye_5_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_5_e";

   function gsl_sf_debye_5 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_5";

  -- D_6(x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_debye_6_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_6_e";

   function gsl_sf_debye_6 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_6";

end GSL.Low_Level.gsl_gsl_sf_debye_h;
