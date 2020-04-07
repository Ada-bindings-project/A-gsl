pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_dht_h is

  -- dht/gsl_dht.h
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
  --  

  -- size of the sample arrays to be transformed     
   type gsl_dht_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_dht.h:39
      nu : aliased double;  -- /usr/include/gsl/gsl_dht.h:40
      xmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:41
      kmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:42
      j : access double;  -- /usr/include/gsl/gsl_dht.h:43
      Jjj : access double;  -- /usr/include/gsl/gsl_dht.h:44
      J2 : access double;  -- /usr/include/gsl/gsl_dht.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_dht.h:38

  -- Bessel function order                           
  -- the upper limit to the x-sampling domain        
  -- the upper limit to the k-sampling domain        
  -- array of computed J_nu zeros, j_{nu,s} = j[s]   
  -- transform numerator, J_nu(j_i j_m / j_N)        
  -- transform denominator, J_{nu+1}^2(j_m)          
   subtype gsl_dht is gsl_dht_struct;  -- /usr/include/gsl/gsl_dht.h:47

  -- Create a new transform object for a given size
  -- * sampling array on the domain [0, xmax].
  --  

   function gsl_dht_alloc (arg1 : size_t) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_alloc";

   function gsl_dht_new
     (arg1 : size_t;
      arg2 : double;
      arg3 : double) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_new";

  -- Recalculate a transform object for given values of nu, xmax.
  -- * You cannot change the size of the object since the internal
  -- * allocation is reused.
  --  

   function gsl_dht_init
     (t : access gsl_dht;
      nu : double;
      xmax : double) return int  -- /usr/include/gsl/gsl_dht.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_init";

  -- The n'th computed x sample point for a given transform.
  -- * 0 <= n <= size-1
  --  

   function gsl_dht_x_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_x_sample";

  -- The n'th computed k sample point for a given transform.
  -- * 0 <= n <= size-1
  --  

   function gsl_dht_k_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_k_sample";

  -- Free a transform object.
  --  

   procedure gsl_dht_free (t : access gsl_dht)  -- /usr/include/gsl/gsl_dht.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_free";

  -- Perform a transform on a sampled array.
  -- * f_in[0] ... f_in[size-1] and similarly for f_out[]
  --  

   function gsl_dht_apply
     (t : access constant gsl_dht;
      f_in : access double;
      f_out : access double) return int  -- /usr/include/gsl/gsl_dht.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_apply";

end GSL.Low_Level.gsl_gsl_dht_h;
