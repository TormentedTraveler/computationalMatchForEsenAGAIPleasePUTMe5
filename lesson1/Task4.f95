program machine_zero
    implicit none
    double precision :: zero, last_zero, n

    zero = 1.0d0
    n = 0.0d0

    do while (zero * 2.0 > zero)
        last_zero = zero
        zero = zero / 2.0d0
        n = n + 1d0
        print *, zero, n
    end do

    print *, 'Machine zero: ', last_zero
    print *, 'Number of iteration it took is: ', n - 1.0d0
end program machine_zero
