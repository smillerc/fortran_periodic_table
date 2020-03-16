program test_compound
  use iso_fortran_env, only: ik => int32, rk => real64
  use mod_periodic_table, only: compound_t, make_compound

  implicit none

  type(compound_t) :: compound

  compound = make_compound(element_symbols=['C', 'H'], &
                           element_fractions=[0.6_rk, 0.4_rk])

  write(*, *) compound
end program test_compound
