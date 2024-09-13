program task4
    implicit none
    integer, parameter :: dp = selected_real_kind(15, 307)
    real(kind=dp):: z, last_zero
    integer :: n
    z = 1.0
    n = 0

    do while (z * 2.0 > z)
        last_zero = z
        z = z / 2.0
        n = n + 1
        print *, z, n
    end do

    print *, 'Machine zero: ', last_zero
    print *, 'Number of iterations it took is: ', n - 1
end program task4
