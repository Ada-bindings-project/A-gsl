pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_complex_h is

   --  arg-macro: function GSL_REAL (z)
   --    return (z).dat(0);
   --  arg-macro: function GSL_IMAG (z)
   --    return (z).dat(1);
   --  arg-macro: function GSL_COMPLEX_P (zp)
   --    return (zp).dat;
   --  arg-macro: function GSL_COMPLEX_P_REAL (zp)
   --    return (zp).dat(0);
   --  arg-macro: function GSL_COMPLEX_P_IMAG (zp)
   --    return (zp).dat(1);
   --  arg-macro: function GSL_COMPLEX_EQ (z1, z2)
   --    return ((z1).dat(0) = (z2).dat(0))  and then  ((z1).dat(1) = (z2).dat(1));
   --  arg-macro: procedure GSL_SET_COMPLEX (zp, x, y)
   --    do {(zp).dat(0):=(x); (zp).dat(1):=(y);} while(0)
   --  arg-macro: procedure GSL_SET_REAL (zp, x)
   --    do {(zp).dat(0):=(x);} while(0)
   --  arg-macro: procedure GSL_SET_IMAG (zp, y)
   --    do {(zp).dat(1):=(y);} while(0)
   --  arg-macro: procedure GSL_SET_COMPLEX_PACKED (zp, n, x, y)
   --    do {*((zp)+2*(n)):=(x); *((zp)+(2*(n)+1)):=(y);} while(0)
  -- complex/gsl_complex.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Gerard Jungman, Brian Gough
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

  -- two consecutive built-in types as a complex number  
   type gsl_complex_packed is access all double;  -- /usr/include/gsl/gsl_complex.h:37

   type gsl_complex_packed_float is access all float;  -- /usr/include/gsl/gsl_complex.h:38

   type gsl_complex_packed_long_double is access all long_double;  -- /usr/include/gsl/gsl_complex.h:39

   type gsl_const_complex_packed is access all double;  -- /usr/include/gsl/gsl_complex.h:41

   type gsl_const_complex_packed_float is access all float;  -- /usr/include/gsl/gsl_complex.h:42

   type gsl_const_complex_packed_long_double is access all long_double;  -- /usr/include/gsl/gsl_complex.h:43

  -- 2N consecutive built-in types as N complex numbers  
   type gsl_complex_packed_array is access all double;  -- /usr/include/gsl/gsl_complex.h:47

   type gsl_complex_packed_array_float is access all float;  -- /usr/include/gsl/gsl_complex.h:48

   type gsl_complex_packed_array_long_double is access all long_double;  -- /usr/include/gsl/gsl_complex.h:49

   type gsl_const_complex_packed_array is access all double;  -- /usr/include/gsl/gsl_complex.h:51

   type gsl_const_complex_packed_array_float is access all float;  -- /usr/include/gsl/gsl_complex.h:52

   type gsl_const_complex_packed_array_long_double is access all long_double;  -- /usr/include/gsl/gsl_complex.h:53

  -- Yes... this seems weird. Trust us. The point is just that
  --   sometimes you want to make it obvious that something is
  --   an output value. The fact that it lacks a 'const' may not
  --   be enough of a clue for people in some contexts.
  --  

   type gsl_complex_packed_ptr is access all double;  -- /usr/include/gsl/gsl_complex.h:61

   type gsl_complex_packed_float_ptr is access all float;  -- /usr/include/gsl/gsl_complex.h:62

   type gsl_complex_packed_long_double_ptr is access all long_double;  -- /usr/include/gsl/gsl_complex.h:63

   type gsl_const_complex_packed_ptr is access all double;  -- /usr/include/gsl/gsl_complex.h:65

   type gsl_const_complex_packed_float_ptr is access all float;  -- /usr/include/gsl/gsl_complex.h:66

   type gsl_const_complex_packed_long_double_ptr is access all long_double;  -- /usr/include/gsl/gsl_complex.h:67

   type gsl_complex_long_double_array1524 is array (0 .. 1) of aliased long_double;
   type gsl_complex_long_double is record
      dat : aliased gsl_complex_long_double_array1524;  -- /usr/include/gsl/gsl_complex.h:72
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_complex.h:74

   type gsl_complex_array1527 is array (0 .. 1) of aliased double;
   type gsl_complex is record
      dat : aliased gsl_complex_array1527;  -- /usr/include/gsl/gsl_complex.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_complex.h:80

   type gsl_complex_float_array1530 is array (0 .. 1) of aliased float;
   type gsl_complex_float is record
      dat : aliased gsl_complex_float_array1530;  -- /usr/include/gsl/gsl_complex.h:84
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_complex.h:86

end GSL.Low_Level.gsl_gsl_complex_h;
