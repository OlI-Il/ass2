(define (problem bubble-example3)
    
    (:domain bubble)
    
    (:objects b - ball
            ms - syrup
            ls - syrup
            t - tea
            cup - cups
            mango - flavor
            lime - flavor
    )
    
    (:init (not (in b cup))
        (not (in ms cup))
        (not (in ls cup))
        (not (in t cup))
        (not (iced))
        (not (mixed))
        (not (heated_ball b))
        (not (heated_syrup ms))
        (not (heated_syrup ls))
        (not (heated_tea t))
        (not (ball_added))
        (not (tea_added))
        (not (syrup_added))
        (not (ice_added))
        (flavored_syrup ls lime)
        (flavored_syrup ms mango)
        (flavored_ball b mango)
    )
    
    (:goal (and
            (not (in b cup))
            (in ms cup)
            (in ls cup)
            (iced)
            (mixed)
            (not (heated_syrup ms))
            (not (heated_syrup ls))
            (syrup_added)
            (syrup_added)
            
            (flavored_syrup ms mango)
            (flavored_syrup ls lime)
            )
            
    )

)