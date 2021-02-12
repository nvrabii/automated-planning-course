(define (problem TAKIN_1)

    (:domain TAKIN)
    (:objects
        B1 B2 B3 B4 B5 B6 B7 B8 F - block
        P00 P01 P02 P10 P11 P12 P20 P21 P22 - place
    )
    (:INIT 
        ; line 0
        (NEIGHBORS P00 P01)
        (NEIGHBORS P00 P10)
        
        (NEIGHBORS P01 P02)
        (NEIGHBORS P01 P11)
        
        (NEIGHBORS P02 P12)
        
        ; line 1
        (NEIGHBORS P10 P11)
        (NEIGHBORS P10 P20)
        
        (NEIGHBORS P11 P12)
        (NEIGHBORS P11 P21)
        
        (NEIGHBORS P12 P22)
    
        ; line 2
        (NEIGHBORS P20 P21)
        (NEIGHBORS P21 P22)
  
        ; blocks on places
        (ON B2 P00)
        (ON B3 P01)
        (ON B6 P02)
        
        (ON B1 P10)
        (ON B5 P01)
        (ON F P02)
        
        (ON B4 P20)
        (ON B7 P21)
        (ON B8 P22)
        
        (FREE F)
    )
     
    (:goal 
        (AND
        (ON B1 P00)
        (ON B2 P01)
        (ON B3 P02)
        
        (ON B4 P10)
        (ON B5 P01)
        (ON B6 P02)
        
        (ON B7 P20)
        (ON B8 P21)
        (ON F P22)
        )
    )

)
