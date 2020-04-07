#
# Basic stuff.
#
s-with GSL.Low_Level.stddef_h;--
s-GSL.Low_Level.stddef_h.size_t-size_t-g

s-limited with GSL.Low_Level.bits_types_FILE_h;-with Interfaces.C_Streams;-
s-with GSL.Low_Level.bits_types_FILE_h;-with Interfaces.C_Streams;-
s-GSL.Low_Level.bits_types_FILE_h.FILE-Interfaces.C_Streams.FILEs-g


# Withs shall not be limited.
s-limited with GSL.Low_Level.gsl_gsl_block_ulong_h;-with GSL.Low_Level.gsl_gsl_block_ulong_h;-
s-limited with GSL.Low_Level.gsl_gsl_vector_ulong_h;-with GSL.Low_Level.gsl_gsl_vector_ulong_h;-
s-limited with GSL.Low_Level.gsl_gsl_permutation_h;-with GSL.Low_Level.gsl_gsl_permutation_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_short_h;-with GSL.Low_Level.gsl_gsl_block_short_h;-
s-limited with GSL.Low_Level.gsl_gsl_sf_result_h;-with GSL.Low_Level.gsl_gsl_sf_result_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_ushort_h;-with GSL.Low_Level.gsl_gsl_block_ushort_h;-
s-limited with GSL.Low_Level.gsl_gsl_monte_h;-with GSL.Low_Level.gsl_gsl_monte_h;-
s-limited with GSL.Low_Level.gsl_gsl_rng_h;-with GSL.Low_Level.gsl_gsl_rng_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_float_h;-with GSL.Low_Level.gsl_gsl_block_float_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_long_double_h;-with GSL.Low_Level.gsl_gsl_block_long_double_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_uint_h;-with GSL.Low_Level.gsl_gsl_block_uint_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_long_h;-with GSL.Low_Level.gsl_gsl_block_long_h;-
s-limited with GSL.Low_Level.gsl_gsl_math_h;-with GSL.Low_Level.gsl_gsl_math_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_complex_long_double_h;-with GSL.Low_Level.gsl_gsl_block_complex_long_double_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_complex_double_h;-with GSL.Low_Level.gsl_gsl_block_complex_double_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_double_h;-with GSL.Low_Level.gsl_gsl_block_double_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_char_h;-with GSL.Low_Level.gsl_gsl_block_char_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_uchar_h;-with GSL.Low_Level.gsl_gsl_block_uchar_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_int_h;-with GSL.Low_Level.gsl_gsl_block_int_h;-
s-limited with GSL.Low_Level.gsl_gsl_block_complex_float_h;-with GSL.Low_Level.gsl_gsl_block_complex_float_h;-



# Non casesensetive names
s!   gsl_message_mask : aliased unsigned  -- /usr/include/gsl/gsl_message.h!   gsl_message_mask_v : aliased unsigned  -- /usr/include/gsl/gsl_message.h!
s!n : access unsigned)  -- /usr/include/gsl/gsl_randist.h!nn : access unsigned)  -- /usr/include/gsl/gsl_randist.h!
s!GSL_SPMATRIX_TRIPLET!GSL_SPMATRIX_TRIPLET_C!
s!GSL_SPMATRIX_CCS!GSL_SPMATRIX_CCS_C!
s!GSL_SPMATRIX_CRS!GSL_SPMATRIX_CRS_C!
s-GSL_VERSION-GSL_VERSION_C-
s-(F : access gsl_multiroot_function;-(FF : access gsl_multiroot_function;-

# File:gsl-low_level-gsl_gsl_sf_bessel_h.ads
#
s-function gsl_sf_bessel_J0_e (-function gsl_sf_bessel_JJ0_e (-
s-function gsl_sf_bessel_J0 (-function gsl_sf_bessel_JJ0 (-
s-function gsl_sf_bessel_J1_e (-function gsl_sf_bessel_JJ1_e (-
s-function gsl_sf_bessel_J1 (-function gsl_sf_bessel_JJ1 (-

s-function gsl_sf_bessel_Y0_e (-function gsl_sf_bessel_YY0_e (-
s-function gsl_sf_bessel_Y0 (-function gsl_sf_bessel_YY0 (-
s-function gsl_sf_bessel_Y1_e (-function gsl_sf_bessel_YY1_e (-
s-function gsl_sf_bessel_Y1 (-function gsl_sf_bessel_YY1 (-

s-function gsl_sf_bessel_I0_scaled_e (-function gsl_sf_bessel_II0_scaled_e (-
s-function gsl_sf_bessel_I1_scaled_e (-function gsl_sf_bessel_II1_scaled_e (-
s-function gsl_sf_bessel_I0_scaled (-function gsl_sf_bessel_II0_scaled (-
s-function gsl_sf_bessel_I1_scaled (-function gsl_sf_bessel_II1_scaled (-


s-function gsl_sf_bessel_K0_scaled_e (-function gsl_sf_bessel_KK0_scaled_e (-
s-function gsl_sf_bessel_K1_scaled_e (-function gsl_sf_bessel_KK1_scaled_e (-
s-function gsl_sf_bessel_K0_scaled (-function gsl_sf_bessel_KK0_scaled (-
s-function gsl_sf_bessel_K1_scaled (-function gsl_sf_bessel_K11_scaled (-

