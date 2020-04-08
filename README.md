# Ada-GSL
Very exprimental bindings to GSL

At the moment for play and show only the low-level parts are in place.

# To do:
* Complete highl-level binding see  GSL.Low_Level.gsl_gsl_cdf_h --> GSL.cdf as initial template (its probable doable to automate parts of the process)
* Write tests gnattest?

## Transform conventions.
* GSL.Low_Level.gsl_gsl_${name}_h maps to GSL.${name}
* C double maps to Ada Long_Float
* C float  maps to Ada Float
* C int   maps to Ada Integer
* C long double  maps to Ada Long_Long_Float
* C short  maps to Ada Short_Integer
* C unsigned types needs to investigated from case to case in a lot of cases they may map to Natural ort Positive, and in som other cases its better to use the types from Interfaces.C directly.
