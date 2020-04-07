pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_gamma_h is

   GSL_SF_GAMMA_XMAX : constant := 171.0;  --  /usr/include/gsl/gsl_sf_gamma.h:283

   GSL_SF_FACT_NMAX : constant := 170;  --  /usr/include/gsl/gsl_sf_gamma.h:286

   GSL_SF_DOUBLEFACT_NMAX : constant := 297;  --  /usr/include/gsl/gsl_sf_gamma.h:289

   function gsl_sf_lngamma_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_e";

   function gsl_sf_lngamma (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma";

   function gsl_sf_lngamma_sgn_e
     (x : double;
      result_lg : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_sgn_e";

   function gsl_sf_gamma_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_e";

   function gsl_sf_gamma (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma";

   function gsl_sf_gammastar_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammastar_e";

   function gsl_sf_gammastar (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammastar";

   function gsl_sf_gammainv_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammainv_e";

   function gsl_sf_gammainv (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammainv";

   function gsl_sf_lngamma_complex_e
     (zr : double;
      zi : double;
      lnr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      arg : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_complex_e";

   function gsl_sf_taylorcoeff_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_taylorcoeff_e";

   function gsl_sf_taylorcoeff (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_taylorcoeff";

   function gsl_sf_fact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fact_e";

   function gsl_sf_fact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fact";

   function gsl_sf_doublefact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_doublefact_e";

   function gsl_sf_doublefact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_doublefact";

   function gsl_sf_lnfact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnfact_e";

   function gsl_sf_lnfact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnfact";

   function gsl_sf_lndoublefact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lndoublefact_e";

   function gsl_sf_lndoublefact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lndoublefact";

   function gsl_sf_lnchoose_e
     (n : unsigned;
      m : unsigned;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnchoose_e";

   function gsl_sf_lnchoose (n : unsigned; m : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnchoose";

   function gsl_sf_choose_e
     (n : unsigned;
      m : unsigned;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_choose_e";

   function gsl_sf_choose (n : unsigned; m : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_choose";

   function gsl_sf_lnpoch_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch_e";

   function gsl_sf_lnpoch (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch";

   function gsl_sf_lnpoch_sgn_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch_sgn_e";

   function gsl_sf_poch_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_poch_e";

   function gsl_sf_poch (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_poch";

   function gsl_sf_pochrel_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pochrel_e";

   function gsl_sf_pochrel (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pochrel";

   function gsl_sf_gamma_inc_Q_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_Q_e";

   function gsl_sf_gamma_inc_Q (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_Q";

   function gsl_sf_gamma_inc_P_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_P_e";

   function gsl_sf_gamma_inc_P (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_P";

   function gsl_sf_gamma_inc_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_e";

   function gsl_sf_gamma_inc (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc";

   function gsl_sf_lnbeta_e
     (a : double;
      b : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta_e";

   function gsl_sf_lnbeta (a : double; b : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta";

   function gsl_sf_lnbeta_sgn_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta_sgn_e";

   function gsl_sf_beta_e
     (a : double;
      b : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_e";

   function gsl_sf_beta (a : double; b : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta";

   function gsl_sf_beta_inc_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_inc_e";

   function gsl_sf_beta_inc
     (a : double;
      b : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_inc";

end GSL.Low_Level.gsl_gsl_sf_gamma_h;
