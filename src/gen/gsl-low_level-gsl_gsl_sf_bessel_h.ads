pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;
with GSL.Low_Level.gsl_gsl_mode_h;


package GSL.Low_Level.gsl_gsl_sf_bessel_h is

   function gsl_sf_bessel_JJ0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_J0_e";

   function gsl_sf_bessel_JJ0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_J0";

   function gsl_sf_bessel_JJ1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_J1_e";

   function gsl_sf_bessel_JJ1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_J1";

   function gsl_sf_bessel_Jn_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Jn_e";

   function gsl_sf_bessel_Jn (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Jn";

   function gsl_sf_bessel_Jn_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Jn_array";

   function gsl_sf_bessel_YY0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Y0_e";

   function gsl_sf_bessel_YY0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Y0";

   function gsl_sf_bessel_YY1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Y1_e";

   function gsl_sf_bessel_YY1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Y1";

   function gsl_sf_bessel_Yn_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Yn_e";

   function gsl_sf_bessel_Yn (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Yn";

   function gsl_sf_bessel_Yn_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Yn_array";

   function gsl_sf_bessel_I0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I0_e";

   function gsl_sf_bessel_I0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I0";

   function gsl_sf_bessel_I1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I1_e";

   function gsl_sf_bessel_I1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I1";

   function gsl_sf_bessel_In_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In_e";

   function gsl_sf_bessel_In (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In";

   function gsl_sf_bessel_In_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In_array";

   function gsl_sf_bessel_II0_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I0_scaled_e";

   function gsl_sf_bessel_II0_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I0_scaled";

   function gsl_sf_bessel_II1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I1_scaled_e";

   function gsl_sf_bessel_II1_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_I1_scaled";

   function gsl_sf_bessel_In_scaled_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In_scaled_e";

   function gsl_sf_bessel_In_scaled (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In_scaled";

   function gsl_sf_bessel_In_scaled_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_In_scaled_array";

   function gsl_sf_bessel_K0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K0_e";

   function gsl_sf_bessel_K0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K0";

   function gsl_sf_bessel_K1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K1_e";

   function gsl_sf_bessel_K1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K1";

   function gsl_sf_bessel_Kn_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn_e";

   function gsl_sf_bessel_Kn (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn";

   function gsl_sf_bessel_Kn_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn_array";

   function gsl_sf_bessel_KK0_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K0_scaled_e";

   function gsl_sf_bessel_KK0_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K0_scaled";

   function gsl_sf_bessel_KK1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K1_scaled_e";

   function gsl_sf_bessel_K11_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_K1_scaled";

   function gsl_sf_bessel_Kn_scaled_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn_scaled_e";

   function gsl_sf_bessel_Kn_scaled (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn_scaled";

   function gsl_sf_bessel_Kn_scaled_array
     (nmin : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Kn_scaled_array";

   function gsl_sf_bessel_j0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j0_e";

   function gsl_sf_bessel_j0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j0";

   function gsl_sf_bessel_j1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j1_e";

   function gsl_sf_bessel_j1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j1";

   function gsl_sf_bessel_j2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j2_e";

   function gsl_sf_bessel_j2 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_j2";

   function gsl_sf_bessel_jl_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_jl_e";

   function gsl_sf_bessel_jl (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_jl";

   function gsl_sf_bessel_jl_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_jl_array";

   function gsl_sf_bessel_jl_steed_array
     (lmax : int;
      x : double;
      jl_x_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_jl_steed_array";

   function gsl_sf_bessel_y0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y0_e";

   function gsl_sf_bessel_y0 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y0";

   function gsl_sf_bessel_y1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y1_e";

   function gsl_sf_bessel_y1 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y1";

   function gsl_sf_bessel_y2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y2_e";

   function gsl_sf_bessel_y2 (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_y2";

   function gsl_sf_bessel_yl_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_yl_e";

   function gsl_sf_bessel_yl (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_yl";

   function gsl_sf_bessel_yl_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_yl_array";

   function gsl_sf_bessel_i0_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i0_scaled_e";

   function gsl_sf_bessel_i0_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i0_scaled";

   function gsl_sf_bessel_i1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i1_scaled_e";

   function gsl_sf_bessel_i1_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i1_scaled";

   function gsl_sf_bessel_i2_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i2_scaled_e";

   function gsl_sf_bessel_i2_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_i2_scaled";

   function gsl_sf_bessel_il_scaled_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_il_scaled_e";

   function gsl_sf_bessel_il_scaled (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_il_scaled";

   function gsl_sf_bessel_il_scaled_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_il_scaled_array";

   function gsl_sf_bessel_k0_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k0_scaled_e";

   function gsl_sf_bessel_k0_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k0_scaled";

   function gsl_sf_bessel_k1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k1_scaled_e";

   function gsl_sf_bessel_k1_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k1_scaled";

   function gsl_sf_bessel_k2_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k2_scaled_e";

   function gsl_sf_bessel_k2_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_k2_scaled";

   function gsl_sf_bessel_kl_scaled_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_kl_scaled_e";

   function gsl_sf_bessel_kl_scaled (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_kl_scaled";

   function gsl_sf_bessel_kl_scaled_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_kl_scaled_array";

   function gsl_sf_bessel_Jnu_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Jnu_e";

   function gsl_sf_bessel_Jnu (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Jnu";

   function gsl_sf_bessel_Ynu_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Ynu_e";

   function gsl_sf_bessel_Ynu (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Ynu";

   function gsl_sf_bessel_sequence_Jnu_e
     (nu : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      size : size_t;
      v : access double) return int  -- /usr/include/gsl/gsl_sf_bessel.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_sequence_Jnu_e";

   function gsl_sf_bessel_Inu_scaled_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Inu_scaled_e";

   function gsl_sf_bessel_Inu_scaled (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Inu_scaled";

   function gsl_sf_bessel_Inu_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Inu_e";

   function gsl_sf_bessel_Inu (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Inu";

   function gsl_sf_bessel_Knu_scaled_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Knu_scaled_e";

   function gsl_sf_bessel_Knu_scaled (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Knu_scaled";

   function gsl_sf_bessel_Knu_scaled_e10_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_bessel.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Knu_scaled_e10_e";

   function gsl_sf_bessel_Knu_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Knu_e";

   function gsl_sf_bessel_Knu (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_Knu";

   function gsl_sf_bessel_lnKnu_e
     (nu : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:519
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_lnKnu_e";

   function gsl_sf_bessel_lnKnu (nu : double; x : double) return double  -- /usr/include/gsl/gsl_sf_bessel.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_lnKnu";

   function gsl_sf_bessel_zero_J0_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_J0_e";

   function gsl_sf_bessel_zero_J0 (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_bessel.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_J0";

   function gsl_sf_bessel_zero_J1_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:535
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_J1_e";

   function gsl_sf_bessel_zero_J1 (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_bessel.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_J1";

   function gsl_sf_bessel_zero_Jnu_e
     (nu : double;
      s : unsigned;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_bessel.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_Jnu_e";

   function gsl_sf_bessel_zero_Jnu (nu : double; s : unsigned) return double  -- /usr/include/gsl/gsl_sf_bessel.h:544
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_bessel_zero_Jnu";

end GSL.Low_Level.gsl_gsl_sf_bessel_h;
