# A Fortran Periodic Table Database

This module is a super simple periodic table database written in modern Fortran. At the moment, it isn't meant to do much more that get the mass and average Z of a given compound.


An example of how to use it would be the following:
```fortran
program test_compound
  use iso_fortran_env, only: ik => int32, rk => real64
  use mod_periodic_table, only: compound_t, make_compound
  implicit none

  type(compound_t) :: compound

  compound = make_compound(element_symbols=['C', 'H'], &
                           element_fractions=[0.6, 0.4])

  write(*, *) compound
end program test_compound
```

Which currently gives the output like the following:
```
Name: CH                                                
Total mass [amu]:  4.032E-01
Average Z:  3.500E+00

Elements:
=========
C: fraction = 0.6000, mass [amu] = 7.2064
H: fraction = 0.4000, mass [amu] = 0.4032
```

## Compiling
`gfortran mod_periodic_table.f90 example_compound.f90 && ./a.out `