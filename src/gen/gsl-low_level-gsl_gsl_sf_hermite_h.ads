pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_hermite_h is

  -- gsl_sf_hermite.h
  -- * 
  -- * Copyright (C) 2011-2014 Konrad Griessinger
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

  ------------------------------------------------------------------------*
  -- * (konradg(at)gmx.net)                                                 *
  -- *---------------------------------------------------------------------- 

   function gsl_sf_hermite_prob_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_e";

   function gsl_sf_hermite_prob (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob";

   function gsl_sf_hermite_prob_der_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der_e";

   function gsl_sf_hermite_prob_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der";

   function gsl_sf_hermite_phys_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_e";

   function gsl_sf_hermite_phys (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys";

   function gsl_sf_hermite_phys_der_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der_e";

   function gsl_sf_hermite_phys_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der";

   function gsl_sf_hermite_func_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_e";

   function gsl_sf_hermite_func (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func";

   function gsl_sf_hermite_prob_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_array";

   function gsl_sf_hermite_prob_array_der
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_array_der";

   function gsl_sf_hermite_prob_der_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der_array";

   function gsl_sf_hermite_prob_series_e
     (n : int;
      x : double;
      a : access double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_series_e";

   function gsl_sf_hermite_prob_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_series";

   function gsl_sf_hermite_phys_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_array";

   function gsl_sf_hermite_phys_array_der
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_array_der";

   function gsl_sf_hermite_phys_der_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der_array";

   function gsl_sf_hermite_phys_series_e
     (n : int;
      x : double;
      a : access double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_series_e";

   function gsl_sf_hermite_phys_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_series";

   function gsl_sf_hermite_func_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_array";

   function gsl_sf_hermite_func_series_e
     (n : int;
      x : double;
      a : access double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_series_e";

   function gsl_sf_hermite_func_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_series";

   function gsl_sf_hermite_func_der_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_der_e";

   function gsl_sf_hermite_func_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_der";

   function gsl_sf_hermite_prob_zero_e
     (n : int;
      s : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_zero_e";

   function gsl_sf_hermite_prob_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_zero";

   function gsl_sf_hermite_phys_zero_e
     (n : int;
      s : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_zero_e";

   function gsl_sf_hermite_phys_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_zero";

   function gsl_sf_hermite_func_zero_e
     (n : int;
      s : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_zero_e";

   function gsl_sf_hermite_func_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_zero";

end GSL.Low_Level.gsl_gsl_sf_hermite_h;
