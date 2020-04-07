pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GSL.Low_Level.gsl_gsl_rng_h;


package GSL.Low_Level.gsl_gsl_siman_h is

   type gsl_siman_Efunc_t is access function (arg1 : System.Address) return double
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:39

   type gsl_siman_step_t is access procedure
        (arg1 : access constant GSL.Low_Level.gsl_gsl_rng_h.gsl_rng;
         arg2 : System.Address;
         arg3 : double)
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:40

   type gsl_siman_metric_t is access function (arg1 : System.Address; arg2 : System.Address) return double
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:41

   type gsl_siman_print_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:42

   type gsl_siman_copy_t is access procedure (arg1 : System.Address; arg2 : System.Address)
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:43

   type gsl_siman_copy_construct_t is access function (arg1 : System.Address) return System.Address
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:44

   type gsl_siman_destroy_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/gsl/gsl_siman.h:45

   type gsl_siman_params_t is record
      n_tries : aliased int;  -- /usr/include/gsl/gsl_siman.h:52
      iters_fixed_T : aliased int;  -- /usr/include/gsl/gsl_siman.h:53
      step_size : aliased double;  -- /usr/include/gsl/gsl_siman.h:54
      k : aliased double;  -- /usr/include/gsl/gsl_siman.h:56
      t_initial : aliased double;  -- /usr/include/gsl/gsl_siman.h:56
      mu_t : aliased double;  -- /usr/include/gsl/gsl_siman.h:56
      t_min : aliased double;  -- /usr/include/gsl/gsl_siman.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_siman.h:57

   procedure gsl_siman_solve
     (r : access constant GSL.Low_Level.gsl_gsl_rng_h.gsl_rng;
      x0_p : System.Address;
      Ef : gsl_siman_Efunc_t;
      take_step : gsl_siman_step_t;
      distance : gsl_siman_metric_t;
      print_position : gsl_siman_print_t;
      copyfunc : gsl_siman_copy_t;
      copy_constructor : gsl_siman_copy_construct_t;
      destructor : gsl_siman_destroy_t;
      element_size : size_t;
      params : gsl_siman_params_t)  -- /usr/include/gsl/gsl_siman.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_siman_solve";

   procedure gsl_siman_solve_many
     (r : access constant GSL.Low_Level.gsl_gsl_rng_h.gsl_rng;
      x0_p : System.Address;
      Ef : gsl_siman_Efunc_t;
      take_step : gsl_siman_step_t;
      distance : gsl_siman_metric_t;
      print_position : gsl_siman_print_t;
      element_size : size_t;
      params : gsl_siman_params_t)  -- /usr/include/gsl/gsl_siman.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_siman_solve_many";

end GSL.Low_Level.gsl_gsl_siman_h;
