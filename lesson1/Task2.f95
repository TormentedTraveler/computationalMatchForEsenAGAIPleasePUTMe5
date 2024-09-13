program machine_epsilon_64bit_precision
    implicit none
    double precision :: epsilon, n

    epsilon = 1.0d0
    n = -1.0d0

    do while (1.0d0 + epsilon > 1.0d0)
        epsilon = epsilon / 10.0d0
        n = n + 1.0d0
        print *, epsilon, n
    end do
    
    epsilon = epsilon * 10.0d0

    print *, 'Machine epsilon for double precision is: ', epsilon
    print *, 'Number of iteration it took is: ', n
end program machine_epsilon_64bit_precision
