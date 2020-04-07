pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_sf_elljac_h is

  -- specfunc/gsl_sf_elljac.h
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
  -- Jacobian elliptic functions sn, dn, cn,
  -- * by descending Landen transformations
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_elljac_e
     (u : double;
      m : double;
      sn : access double;
      cn : access double;
      dn : access double) return int  -- /usr/include/gsl/gsl_sf_elljac.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_elljac_e";

end GSL.Low_Level.gsl_gsl_sf_elljac_h;
