pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_coupling_h is

  -- specfunc/gsl_sf_coupling.h
  -- * 
  -- * Copyright (C) 1996,1997,1998,1999,2000,2001,2002 Gerard Jungman
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
  -- 3j Symbols:  / ja jb jc  *              \ ma mb mc /
  --/
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_coupling_3j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_ma : int;
      two_mb : int;
      two_mc : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_3j_e";

   function gsl_sf_coupling_3j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_ma : int;
      two_mb : int;
      two_mc : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_3j";

  -- 6j Symbols:  / ja jb jc  *              \ jd je jf /
  --/
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_coupling_6j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j_e";

   function gsl_sf_coupling_6j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j";

  -- Racah W coefficients:
  -- *
  -- *   W(a b c d; e f) = (-1)^{a+b+c+d} / a b e  *                                    \ d c f /
  --/
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_coupling_RacahW_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_RacahW_e";

   function gsl_sf_coupling_RacahW
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_RacahW";

  -- 9j Symbols:  / ja jb jc  *              | jd je jf |
  --|
  -- *              \ jg jh ji /
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_coupling_9j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      two_jg : int;
      two_jh : int;
      two_ji : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_9j_e";

   function gsl_sf_coupling_9j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      two_jg : int;
      two_jh : int;
      two_ji : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_9j";

  -- INCORRECT version of 6j Symbols:
  -- * This function actually calculates
  -- *              / ja jb je  *              \ jd jc jf /
  --/
  -- * It represents the original implementation,
  -- * which had the above permutation of the
  -- * arguments. This was wrong and confusing,
  -- * and I had to fix it. Sorry for the trouble.
  -- * [GJ] Tue Nov 26 12:53:39 MST 2002
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

end GSL.Low_Level.gsl_gsl_sf_coupling_h;
