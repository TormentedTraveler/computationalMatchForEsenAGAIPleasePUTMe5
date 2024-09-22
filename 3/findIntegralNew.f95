program calculateIntegral

    real, parameter :: PI = atan(1.0) * 4
    real :: a = PI, b = PI*3/2, S = 0, random_num, random_num_from_a_to_b
    integer :: M = 1000, i = 1
    
    do while (i < M)
        call random_number(random_num)
        
        print *, 'limits are ', a, b
        
        print *, 'random num is', random_num
        
        random_num_from_a_to_b = random_num * (b-a) + a
        
        print *, 'random num from a to b', random_num_from_a_to_b
        
        S = S + sin(random_num_from_a_to_b)
        
        print *, S/i
        
        i = i + 1
    enddo

    print *, 'result is', S/M * (b - a)


end program calculateIntegral
