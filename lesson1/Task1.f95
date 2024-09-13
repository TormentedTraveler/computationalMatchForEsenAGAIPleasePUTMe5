program machine_epsilon_32bit_precision
    implicit none
    real :: epsilon, n

    epsilon = 1.0
    n = 0.0

    do while (1.0 + epsilon > 1.0)
        epsilon = epsilon / 10.0
        n = n + 1
        print *, epsilon, n
    end do
    
    epsilon = epsilon * 10.0

    print *, 'Machine epsilon for single precision is: ', epsilon
    print *, 'Number of iteration it took is: ', n
end program machine_epsilon_32bit_precision
