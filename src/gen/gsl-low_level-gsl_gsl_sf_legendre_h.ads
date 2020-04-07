pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;


package GSL.Low_Level.gsl_gsl_sf_legendre_h is

   function gsl_sf_legendre_Pl_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_e";

   function gsl_sf_legendre_Pl (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl";

   function gsl_sf_legendre_Pl_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_array";

   function gsl_sf_legendre_Pl_deriv_array
     (lmax : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_deriv_array";

   function gsl_sf_legendre_P1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1_e";

   function gsl_sf_legendre_P2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2_e";

   function gsl_sf_legendre_P3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3_e";

   function gsl_sf_legendre_P1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1";

   function gsl_sf_legendre_P2 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2";

   function gsl_sf_legendre_P3 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3";

   function gsl_sf_legendre_Q0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0_e";

   function gsl_sf_legendre_Q0 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0";

   function gsl_sf_legendre_Q1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1_e";

   function gsl_sf_legendre_Q1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1";

   function gsl_sf_legendre_Ql_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql_e";

   function gsl_sf_legendre_Ql (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql";

   function gsl_sf_legendre_Plm_e
     (l : int;
      m : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_e";

   function gsl_sf_legendre_Plm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm";

   function gsl_sf_legendre_Plm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_array";

   function gsl_sf_legendre_Plm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_deriv_array";

   function gsl_sf_legendre_sphPlm_e
     (l : int;
      m : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_e";

   function gsl_sf_legendre_sphPlm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm";

   function gsl_sf_legendre_sphPlm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_array";

   function gsl_sf_legendre_sphPlm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_deriv_array";

   function gsl_sf_legendre_array_size (lmax : int; m : int) return int  -- /usr/include/gsl/gsl_sf_legendre.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_size";

   function gsl_sf_conicalP_half_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half_e";

   function gsl_sf_conicalP_half (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half";

   function gsl_sf_conicalP_mhalf_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf_e";

   function gsl_sf_conicalP_mhalf (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf";

   function gsl_sf_conicalP_0_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0_e";

   function gsl_sf_conicalP_0 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0";

   function gsl_sf_conicalP_1_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1_e";

   function gsl_sf_conicalP_1 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1";

   function gsl_sf_conicalP_sph_reg_e
     (l : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg_e";

   function gsl_sf_conicalP_sph_reg
     (l : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg";

   function gsl_sf_conicalP_cyl_reg_e
     (m : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg_e";

   function gsl_sf_conicalP_cyl_reg
     (m : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg";

   function gsl_sf_legendre_H3d_0_e
     (lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0_e";

   function gsl_sf_legendre_H3d_0 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0";

   function gsl_sf_legendre_H3d_1_e
     (lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1_e";

   function gsl_sf_legendre_H3d_1 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1";

   function gsl_sf_legendre_H3d_e
     (l : int;
      lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_e";

   function gsl_sf_legendre_H3d
     (l : int;
      lambda : double;
      eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d";

   function gsl_sf_legendre_H3d_array
     (lmax : int;
      lambda : double;
      eta : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_array";

   type gsl_sf_legendre_t is 
     (GSL_SF_LEGENDRE_SCHMIDT,
      GSL_SF_LEGENDRE_SPHARM,
      GSL_SF_LEGENDRE_FULL,
      GSL_SF_LEGENDRE_NONE)
   with Convention => C;  -- /usr/include/gsl/gsl_sf_legendre.h:320

   function gsl_sf_legendre_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array";

   function gsl_sf_legendre_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_e";

   function gsl_sf_legendre_deriv_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array";

   function gsl_sf_legendre_deriv_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array_e";

   function gsl_sf_legendre_deriv_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array";

   function gsl_sf_legendre_deriv_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array_e";

   function gsl_sf_legendre_deriv2_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array";

   function gsl_sf_legendre_deriv2_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array_e";

   function gsl_sf_legendre_deriv2_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array";

   function gsl_sf_legendre_deriv2_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array_e";

   function gsl_sf_legendre_array_n (lmax : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_n";

   function gsl_sf_legendre_array_index (l : size_t; m : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_index";

   function gsl_sf_legendre_nlm (lmax : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_nlm";

end GSL.Low_Level.gsl_gsl_sf_legendre_h;
