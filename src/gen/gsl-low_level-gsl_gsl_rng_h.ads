pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with Interfaces.C_Streams;

package GSL.Low_Level.gsl_gsl_rng_h is

  -- rng/gsl_rng.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2004, 2007 James Theiler, Brian Gough
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

   type gsl_rng_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_rng.h:41
      max : aliased unsigned_long;  -- /usr/include/gsl/gsl_rng.h:42
      min : aliased unsigned_long;  -- /usr/include/gsl/gsl_rng.h:43
      size : aliased size_t;  -- /usr/include/gsl/gsl_rng.h:44
      set : access procedure (arg1 : System.Address; arg2 : unsigned_long);  -- /usr/include/gsl/gsl_rng.h:45
      get : access function (arg1 : System.Address) return unsigned_long;  -- /usr/include/gsl/gsl_rng.h:46
      get_double : access function (arg1 : System.Address) return double;  -- /usr/include/gsl/gsl_rng.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rng.h:49

   type gsl_rng is record
      c_type : access constant gsl_rng_type;  -- /usr/include/gsl/gsl_rng.h:53
      state : System.Address;  -- /usr/include/gsl/gsl_rng.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rng.h:56

  -- These structs also need to appear in default.c so you can select
  --   them via the environment variable GSL_RNG_TYPE  

   gsl_rng_borosh13 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_borosh13";

   gsl_rng_coveyou : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_coveyou";

   gsl_rng_cmrg : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_cmrg";

   gsl_rng_fishman18 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_fishman18";

   gsl_rng_fishman20 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_fishman20";

   gsl_rng_fishman2x : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_fishman2x";

   gsl_rng_gfsr4 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_gfsr4";

   gsl_rng_knuthran : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_knuthran";

   gsl_rng_knuthran2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_knuthran2";

   gsl_rng_knuthran2002 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_knuthran2002";

   gsl_rng_lecuyer21 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_lecuyer21";

   gsl_rng_minstd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_minstd";

   gsl_rng_mrg : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_mrg";

   gsl_rng_mt19937 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_mt19937";

   gsl_rng_mt19937_1999 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_mt19937_1999";

   gsl_rng_mt19937_1998 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_mt19937_1998";

   gsl_rng_r250 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_r250";

   gsl_rng_ran0 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ran0";

   gsl_rng_ran1 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ran1";

   gsl_rng_ran2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ran2";

   gsl_rng_ran3 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ran3";

   gsl_rng_rand : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_rand";

   gsl_rng_rand48 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_rand48";

   gsl_rng_random128_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random128_bsd";

   gsl_rng_random128_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random128_glibc2";

   gsl_rng_random128_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random128_libc5";

   gsl_rng_random256_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random256_bsd";

   gsl_rng_random256_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random256_glibc2";

   gsl_rng_random256_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random256_libc5";

   gsl_rng_random32_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random32_bsd";

   gsl_rng_random32_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random32_glibc2";

   gsl_rng_random32_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random32_libc5";

   gsl_rng_random64_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random64_bsd";

   gsl_rng_random64_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random64_glibc2";

   gsl_rng_random64_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random64_libc5";

   gsl_rng_random8_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random8_bsd";

   gsl_rng_random8_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random8_glibc2";

   gsl_rng_random8_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random8_libc5";

   gsl_rng_random_bsd : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random_bsd";

   gsl_rng_random_glibc2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random_glibc2";

   gsl_rng_random_libc5 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_random_libc5";

   gsl_rng_randu : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_randu";

   gsl_rng_ranf : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranf";

   gsl_rng_ranlux : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlux";

   gsl_rng_ranlux389 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlux389";

   gsl_rng_ranlxd1 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlxd1";

   gsl_rng_ranlxd2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlxd2";

   gsl_rng_ranlxs0 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlxs0";

   gsl_rng_ranlxs1 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlxs1";

   gsl_rng_ranlxs2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranlxs2";

   gsl_rng_ranmar : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_ranmar";

   gsl_rng_slatec : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_slatec";

   gsl_rng_taus : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_taus";

   gsl_rng_taus2 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_taus2";

   gsl_rng_taus113 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_taus113";

   gsl_rng_transputer : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_transputer";

   gsl_rng_tt800 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_tt800";

   gsl_rng_uni : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_uni";

   gsl_rng_uni32 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_uni32";

   gsl_rng_vax : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_vax";

   gsl_rng_waterman14 : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_waterman14";

   gsl_rng_zuf : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_zuf";

   function gsl_rng_types_setup return System.Address  -- /usr/include/gsl/gsl_rng.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_types_setup";

   gsl_rng_default : access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_default";

   gsl_rng_default_seed : aliased unsigned_long  -- /usr/include/gsl/gsl_rng.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_default_seed";

   function gsl_rng_alloc (arg1 : access constant gsl_rng_type) return access gsl_rng  -- /usr/include/gsl/gsl_rng.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_alloc";

   function gsl_rng_memcpy (dest : access gsl_rng; src : access constant gsl_rng) return int  -- /usr/include/gsl/gsl_rng.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_memcpy";

   function gsl_rng_clone (arg1 : access constant gsl_rng) return access gsl_rng  -- /usr/include/gsl/gsl_rng.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_clone";

   procedure gsl_rng_free (r : access gsl_rng)  -- /usr/include/gsl/gsl_rng.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_free";

   procedure gsl_rng_set (r : access constant gsl_rng; seed : unsigned_long)  -- /usr/include/gsl/gsl_rng.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_set";

   function gsl_rng_max (r : access constant gsl_rng) return unsigned_long  -- /usr/include/gsl/gsl_rng.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_max";

   function gsl_rng_min (r : access constant gsl_rng) return unsigned_long  -- /usr/include/gsl/gsl_rng.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_min";

   function gsl_rng_name (arg1 : access constant gsl_rng) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_rng.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_name";

   function gsl_rng_fread (stream : Interfaces.C_Streams.FILEs; r : access gsl_rng) return int  -- /usr/include/gsl/gsl_rng.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_fread";

   function gsl_rng_fwrite (stream : Interfaces.C_Streams.FILEs; r : access constant gsl_rng) return int  -- /usr/include/gsl/gsl_rng.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_fwrite";

   function gsl_rng_size (r : access constant gsl_rng) return size_t  -- /usr/include/gsl/gsl_rng.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_size";

   function gsl_rng_state (arg1 : access constant gsl_rng) return System.Address  -- /usr/include/gsl/gsl_rng.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_state";

   procedure gsl_rng_print_state (r : access constant gsl_rng)  -- /usr/include/gsl/gsl_rng.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_print_state";

   function gsl_rng_env_setup return access constant gsl_rng_type  -- /usr/include/gsl/gsl_rng.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_env_setup";

   function gsl_rng_get (r : access constant gsl_rng) return unsigned_long  -- /usr/include/gsl/gsl_rng.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_get";

   function gsl_rng_uniform (r : access constant gsl_rng) return double  -- /usr/include/gsl/gsl_rng.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_uniform";

   function gsl_rng_uniform_pos (r : access constant gsl_rng) return double  -- /usr/include/gsl/gsl_rng.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_uniform_pos";

   function gsl_rng_uniform_int (r : access constant gsl_rng; n : unsigned_long) return unsigned_long  -- /usr/include/gsl/gsl_rng.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rng_uniform_int";

  -- Note: to avoid integer overflow in (range+1) we work with scale =
  --   range/n = (max-min)/n rather than scale=(max-min+1)/n, this reduces
  --   efficiency slightly but avoids having to check for the out of range
  --   value.  Note that range is typically O(2^32) so the addition of 1
  --   is negligible in most usage.  

end GSL.Low_Level.gsl_gsl_rng_h;
