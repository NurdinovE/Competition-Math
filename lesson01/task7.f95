program task7
    implicit none
    integer, parameter :: dp = selected_real_kind(15, 307)
    real(kind=dp):: i, last_infinity
    integer :: n

    i = 1.0d0
    n = 0.0d0

    do while (i * 2.0 > i)
    
        last_infinity = i
        
        i = i * 2.0d0
        n = n + 1d0
        
        print *, i, n
    end do

    print *, 'Machine zero: ', last_infinity
    print *, 'Number of iteration it took is: ', n - 1.0d0
    
end program task7
