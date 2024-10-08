program calculateIntegral

    real, parameter :: PI = atan(1.0) * 4
    real :: a = PI, b = PI*3/2, S = 0, random_num, random_num_from_a_to_b
    integer :: M = 1000, i = 0
    
    do while (i < M)
        call random_number(random_num)
        
        print *, random_num
        
        random_num_from_a_to_b = random_num * (b-a)+a
        
        S = sin(random_num_from_a_to_b) * random_num_from_a_to_b + S
        
        i = i + 1
    enddo

    print *, S/M


end program calculateIntegral
