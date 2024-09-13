
program machine_infinity
    implicit none
    double precision :: infinity, last_infinity, n

    infinity = 1.0d0
    n = 0.0d0

    do while (infinity * 2.0 > infinity)
        last_infinity = infinity
        infinity = infinity * 2.0d0
        n = n + 1d0
        print *, infinity, n
    end do

    print *, 'Machine zero: ', last_infinity
    print *, 'Number of iteration it took is: ', n - 1.0d0
end program machine_infinity
