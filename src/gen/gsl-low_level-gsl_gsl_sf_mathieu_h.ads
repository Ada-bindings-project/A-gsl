pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_vector_double_h;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
limited with GSL.Low_Level.gsl_gsl_eigen_h;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_mathieu_h is

   GSL_SF_MATHIEU_COEFF : constant := 100;  --  /usr/include/gsl/gsl_sf_mathieu.h:40

  -- specfunc/gsl_sf_mathieu.h
  -- * 
  -- * Copyright (C) 2002 Lowell Johnson
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
  -- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  --  

  -- Author:  L. Johnson  
  -- allow for caching of results: not implemented yet  
  -- allow for caching of results: not implemented yet  
   type gsl_sf_mathieu_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_sf_mathieu.h:44
      even_order : aliased size_t;  -- /usr/include/gsl/gsl_sf_mathieu.h:45
      odd_order : aliased size_t;  -- /usr/include/gsl/gsl_sf_mathieu.h:46
      extra_values : aliased int;  -- /usr/include/gsl/gsl_sf_mathieu.h:47
      qa : aliased double;  -- /usr/include/gsl/gsl_sf_mathieu.h:48
      qb : aliased double;  -- /usr/include/gsl/gsl_sf_mathieu.h:49
      aa : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:50
      bb : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:51
      dd : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:52
      ee : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:53
      tt : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:54
      e2 : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:55
      zz : access double;  -- /usr/include/gsl/gsl_sf_mathieu.h:56
      eval : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_sf_mathieu.h:57
      evec : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_sf_mathieu.h:58
      wmat : access GSL.Low_Level.gsl_gsl_eigen_h.gsl_eigen_symmv_workspace;  -- /usr/include/gsl/gsl_sf_mathieu.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sf_mathieu.h:60

  -- Compute an array of characteristic (eigen) values from the recurrence
  --   matrices for the Mathieu equations.  

   function gsl_sf_mathieu_a_array
     (order_min : int;
      order_max : int;
      qq : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_a_array";

   function gsl_sf_mathieu_b_array
     (order_min : int;
      order_max : int;
      qq : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_b_array";

  -- Compute the characteristic value for a Mathieu function of order n and
  --   type ntype.  

   function gsl_sf_mathieu_a_e
     (order : int;
      qq : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_a_e";

   function gsl_sf_mathieu_a (order : int; qq : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_a";

   function gsl_sf_mathieu_b_e
     (order : int;
      qq : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_b_e";

   function gsl_sf_mathieu_b (order : int; qq : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_b";

  -- Compute the Fourier coefficients for a Mathieu function.  
   function gsl_sf_mathieu_a_coeff
     (order : int;
      qq : double;
      aa : double;
      coeff : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_a_coeff";

   function gsl_sf_mathieu_b_coeff
     (order : int;
      qq : double;
      aa : double;
      coeff : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_b_coeff";

  -- Allocate computational storage space for eigenvalue solution.  
   function gsl_sf_mathieu_alloc (arg1 : size_t; arg2 : double) return access gsl_sf_mathieu_workspace  -- /usr/include/gsl/gsl_sf_mathieu.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_alloc";

   procedure gsl_sf_mathieu_free (workspace : access gsl_sf_mathieu_workspace)  -- /usr/include/gsl/gsl_sf_mathieu.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_free";

  -- Compute an angular Mathieu function.  
   function gsl_sf_mathieu_ce_e
     (order : int;
      qq : double;
      zz : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_ce_e";

   function gsl_sf_mathieu_ce
     (order : int;
      qq : double;
      zz : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_ce";

   function gsl_sf_mathieu_se_e
     (order : int;
      qq : double;
      zz : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_se_e";

   function gsl_sf_mathieu_se
     (order : int;
      qq : double;
      zz : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_se";

   function gsl_sf_mathieu_ce_array
     (nmin : int;
      nmax : int;
      qq : double;
      zz : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_ce_array";

   function gsl_sf_mathieu_se_array
     (nmin : int;
      nmax : int;
      qq : double;
      zz : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_se_array";

  -- Compute a radial Mathieu function.  
   function gsl_sf_mathieu_Mc_e
     (kind : int;
      order : int;
      qq : double;
      zz : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Mc_e";

   function gsl_sf_mathieu_Mc
     (kind : int;
      order : int;
      qq : double;
      zz : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Mc";

   function gsl_sf_mathieu_Ms_e
     (kind : int;
      order : int;
      qq : double;
      zz : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Ms_e";

   function gsl_sf_mathieu_Ms
     (kind : int;
      order : int;
      qq : double;
      zz : double) return double  -- /usr/include/gsl/gsl_sf_mathieu.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Ms";

   function gsl_sf_mathieu_Mc_array
     (kind : int;
      nmin : int;
      nmax : int;
      qq : double;
      zz : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Mc_array";

   function gsl_sf_mathieu_Ms_array
     (kind : int;
      nmin : int;
      nmax : int;
      qq : double;
      zz : double;
      work : access gsl_sf_mathieu_workspace;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_mathieu.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_mathieu_Ms_array";

end GSL.Low_Level.gsl_gsl_sf_mathieu_h;
