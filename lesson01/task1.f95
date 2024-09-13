program machine_properties
  implicit none
  integer, parameter :: float64 = selected_real_kind(15, 307)
  real(float64) :: epsilon
  integer :: n
  epsilon = 1.0_float64
  n = 0.0
  do while (1.0_float64 + epsilon > 1.0_float64)
      epsilon = epsilon / 10.0_float64
      n = n + 1
  end do
  print *, "Machine Epsilon for double precision (float64) is:", epsilon
  print *, "Number of iterations:", n

end program machine_properties
